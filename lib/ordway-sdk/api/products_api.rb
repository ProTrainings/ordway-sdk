module Ordway
  class ProductsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Create Product
    # @option opts [Product] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.create ..."
      end

      result = @api_client.call("post", "products", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Product" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Get Product
    def get(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.get ..."
      end

      result = @api_client.call("get", "products/#{id}", opts: { return_type: "Product" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#get\nData: #{result.inspect}"
      end

      result
    end

    # Update Product
    # @option opts [Product] :body
    def update(id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.update ..."
      end

      result = @api_client.call("put", "products/#{id}",
        params: @api_client.object_to_http_body(params[:body]), opts: { return_type: "Product" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#update\nData:#{result.inspect}"
      end

      result
    end

    # Get Products
    def list(incoming_params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.list ..."
      end

      allowed_params = [:name, :active]
      params = incoming_params.slice(*allowed_params).compact

      result = @api_client.call("get", "products", params: params, opts: { return_type: "Product" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#list\nData: #{result.inspect}"
      end

      result
    end
  end
end
