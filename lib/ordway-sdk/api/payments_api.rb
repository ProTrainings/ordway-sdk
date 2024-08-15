module Ordway
  class PaymentsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Create Payment
    # @option opts [Payment] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.create ..."
      end

      result = @api_client.call("post", "payments", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Payment" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create\nData:#{result.inspect}"
      end

      result
    end
  end
end
