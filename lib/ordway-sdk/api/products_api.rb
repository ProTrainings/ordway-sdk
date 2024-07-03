module Ordway
  class ProductsApi
    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
  end
end
