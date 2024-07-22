require "logger"

module Ordway
  require "json"

  class MockApiClient
    attr_accessor :config

    def initialize(config = Configuration.default)
      @config = config
    end

    # The default Configuration object.
    def self.default
      @default ||= MockApiClient.new
    end

    def call(_method, _url, params: {}, opts: {})
      puts params
      target = opts[:return_type].downcase
      spec = Gem::Specification.find_by_name("ordway-sdk")
      file_path = File.join(spec.gem_dir, "lib", "ordway-sdk", "mock", "#{target}.json")

      Response.new(true, Ordway.const_get(opts[:return_type]).map(JSON.parse(File.read(file_path))))
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
  end
end

# def deserialize(response, opts: {})
#   debugger
#   body = response.body
#
#   return nil if body.empty?
#
#   # ensuring a default content type
#   response.headers["Content-Type"] || "application/json"
#
#   begin
#     data = if opts[:return_type]
#              Ordway.const_get(opts[:return_type]).map(JSON.parse(body))
#            else
#              JSON.parse(body)
#            end
#   rescue JSON::ParserError => e
#     @config.logger.error e
#   end
#
#   data
# end
