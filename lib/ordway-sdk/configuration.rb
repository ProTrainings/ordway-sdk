require "logger"
require "addressable"
require "faraday/retry"
require "faraday"

module Ordway
  class Configuration
    attr_accessor :scheme, :mocking_enabled, :host, :base_path, :api_key, :debugging, :logger, :timeout,
      :api_key_prefix

    def initialize
      @scheme = scheme
      @mocking_enabled = mocking_enabled
      @host = host
      @base_path = base_path
      @api_key = {}
      @api_key_prefix = {}
      @timeout = 0
      @debugging = debugging || false
      @logger = defined?(Rails) ? Rails.logger : Logger.new($stdout)

      yield(self) if block_given?
    end

    def mock_api?
      @mocking_enabled.to_s.downcase == "true"
    end

    # The default Configuration object.
    def self.default
      @default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def base_url
      url = "#{scheme}://#{[host, base_path].join("/").gsub(%r{/+}, "/")}".sub(%r{/+\z}, "")
      Addressable::URI.encode(url)
    end

    # Gets API key (with prefix if set).
    def api_key_with_prefix(param_name)
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{@api_key[param_name]}"
      else
        @api_key[param_name]
      end
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        "X-API-KEY" =>
          {
            type: "api_key",
            in: "header",
            key: "X-API-KEY",
            value: api_key_with_prefix("X-API-KEY")
          },
        "X-User-Company" =>
          {
            type: "api_key",
            in: "header",
            key: "X-User-Company",
            value: api_key_with_prefix("X-User-Company")
          },
        "X-User-Email" =>
          {
            type: "api_key",
            in: "header",
            key: "X-User-Email",
            value: api_key_with_prefix("X-User-Email")
          },
        "X-User-Token" =>
          {
            type: "api_key",
            in: "header",
            key: "X-User-Token",
            value: api_key_with_prefix("X-User-Token")
          }
      }
    end
  end
end
