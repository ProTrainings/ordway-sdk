module Ordway
  class PaymentRunsApi
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
        @api_client.config.logger.debug "Calling API: PaymentRunsApi.create ..."
      end

      result = @api_client.call("post", "payment_runs", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "PaymentRun" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentRunsApi#create\nData:#{result.inspect}"
      end

      result
    end
  end
end
