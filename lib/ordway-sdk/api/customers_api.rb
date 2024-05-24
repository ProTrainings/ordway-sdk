require "uri"

module Ordway
  class CustomersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Customer
    def get_customer(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.get_customers ..."
      end

      result = @api_client.call("get", "customers/{id}".sub("{id}", params: id.to_s))

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#get_customers\nData: #{result.inspect}"
      end

      result
    end

    # Create Customer
    # @option opts [Customer] :body
    def post_customer(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.post_customers ..."
      end

      result = @api_client.call("post", "customers", params: @api_client.object_to_http_body(opts[:body]))

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#post_customers\nData:#{result.inspect}"
      end

      result
    end
  end
end
