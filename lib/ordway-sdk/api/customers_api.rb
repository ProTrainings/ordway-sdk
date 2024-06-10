module Ordway
  class CustomersApi
    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Customers
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.list ..."
      end

      result = @api_client.call("get", "customers", opts: { return_type: "Customer" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#list\nData: #{result.inspect}"
      end

      result
    end

    # Get Customer
    def get(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.get ..."
      end

      result = @api_client.call("get", "customers/#{id}", opts: { return_type: "Customer" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#get\nData: #{result.inspect}"
      end

      result
    end

    # Update Customer
    # @option opts [Customer] :body
    def update(id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.update ..."
      end

      result = @api_client.call("put", "customers/#{id}",
        params: @api_client.object_to_http_body(params[:body]), opts: { return_type: "Customer" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#update\nData:#{result.inspect}"
      end

      result
    end

    # Create Customer
    # @option opts [Customer] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.create ..."
      end

      result = @api_client.call("post", "customers", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Customer" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#create\nData:#{result.inspect}"
      end

      result
    end
  end
end
