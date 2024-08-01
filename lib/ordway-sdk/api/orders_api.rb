module Ordway
  class OrdersApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Get Orders
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.list ..."
      end

      result = @api_client.call("get", "orders", opts: { return_type: "Order" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#list\nData: #{result.inspect}"
      end

      result
    end

    # Get Order
    def get(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.get ..."
      end

      result = @api_client.call("get", "orders/#{id}", opts: { return_type: "Order" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get\nData: #{result.inspect}"
      end

      result
    end

    # Update Order
    # @option opts [Order] :body
    def update(id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.update ..."
      end

      result = @api_client.call("put", "orders/#{id}",
        params: @api_client.object_to_http_body(params[:body]), opts: { return_type: "Order" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#update\nData:#{result.inspect}"
      end

      result
    end

    # Create Order
    # @option opts [Order] :body
    def cancel(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.create ..."
      end

      result = @api_client.call("post", "orders", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Order" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Create Order
    # @option opts [Order] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.create ..."
      end

      result = @api_client.call("post", "orders", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Order" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create\nData:#{result.inspect}"
      end

      result
    end
  end
end
