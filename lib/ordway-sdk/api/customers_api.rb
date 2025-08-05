module Ordway
  class CustomersApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Get Customers
    def list(incoming_params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.list ..."
      end

      allowed_params = [:name, :status]
      params = incoming_params.slice(*allowed_params).compact
      
      result = @api_client.call("get", "customers", params: params, opts: { return_type: "Customer" })

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
