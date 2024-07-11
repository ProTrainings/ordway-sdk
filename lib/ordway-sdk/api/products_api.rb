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
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.list ..."
      end

      result = @api_client.call("get", "products", opts: { return_type: "Product" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#list\nData: #{result.inspect}"
      end

      result
    end
  end
end
