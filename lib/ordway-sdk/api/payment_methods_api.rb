module Ordway
  class PaymentMethodsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Get Payment Methods
    def list(customer_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentMethodsApi.list ..."
      end

      result = @api_client.call("get", "customers/#{customer_id}/payment_methods",
        opts: { return_type: "PaymentMethod" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentMethodsApi#list\nData: #{result.inspect}"
      end

      result
    end

    # Create PaymentMethods
    # @option opts [PaymentMethods] :body
    def create(customer_id, options = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentMethodsApi.create ..."
      end

      result = @api_client.call("post", "customers/#{customer_id}/payment_methods",
        params: @api_client.object_to_http_body(options[:body]), opts: { return_type: "PaymentMethods" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentMethodsApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Get PaymentMethods
    def get(customer_id, id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentMethodsApi.get ..."
      end

      result = @api_client.call("get", "customers/#{customer_id}/payment_methods/#{id}",
        opts: { return_type: "PaymentMethod" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentMethodsApi#get\nData: #{result.inspect}"
      end

      result
    end
  end
end
