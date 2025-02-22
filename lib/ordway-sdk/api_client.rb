require "faraday"
require "logger"

module Ordway
  class ApiClient
    attr_accessor :default_headers, :config

    # Initializes the ApiClient
    def initialize(config = Configuration.default)
      @config = config
      @user_agent = "Ordway-SDK/#{VERSION}/ruby"
      @default_headers = {
        "Content-Type" => "application/json",
        "User-Agent" => @user_agent
      }

      retry_options = {
        max: 5,                   # Retry a failed request up to 5 times
        interval: 0.5,            # First retry after 0.5s
        backoff_factor: 2,        # Double the delay for each subsequent retry
        interval_randomness: 0.5, # Specify "jitter" of up to 50% of interval
        retry_statuses: [429],    # Retry only when we get a 429 response
        methods: [:get]           # Retry only GET requests
      }

      # update_params_for_auth! header_params, query_params
      headers = @default_headers
      update_params_for_auth! headers

      @conn = Faraday.new(url: @config.base_url, headers: headers) do |c|
        c.response :logger,
          config.logger,
          headers: false,
          bodies: false,
          log_level: :error
        c.adapter :net_http
        c.request :json
        c.request :retry, retry_options
        c.response :raise_error
      end
    end

    def self.default
      @default ||= ApiClient.new
    end

    def call(method, url, params: {}, opts: {})
      begin
        response = @conn.send(method) do |req|
          case method.to_sym
          when :get, :delete
            req.url url, params
          when :post, :put, :patch
            req.url url
            req.body = params
          end
        end

        if @config.debugging
          @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
        end

        return Response.new(true, deserialize(response, opts: opts))
      rescue StandardError => e
        details = JSON.parse(e.response[:body]) unless e.response[:body].empty?
      end

      @config.logger.error "An error occurred: #{e.message} \n Details: #{details}"
      Response.new(false, details)
    end

    def deserialize(response, opts: {})
      body = response.body

      return nil if body.empty?

      # ensuring a default content type
      response.headers["Content-Type"] || "application/json"

      begin
        data = if opts[:return_type]
          Ordway.const_get(opts[:return_type]).map(JSON.parse(body))
        else
          JSON.parse(body)
        end
      rescue JSON::ParserError => e
        @config.logger.error e
      end

      data
    end

    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)

      local_body = if model.is_a?(Array)
        model.map { |m| object_to_hash(m) }
      else
        object_to_hash(model)
      end
      local_body.to_json
    end

    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    def update_params_for_auth!(header_params)
      %w[X-API-KEY X-User-Company X-User-Email X-User-Token].each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting

        header_params[auth_setting[:key]] = auth_setting[:value]
      end
    end
  end
end
