module Ordway
  class BillingRunsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
                      MockApiClient.default
                    else
                      api_client
                    end
    end

    # Create Billing Run
    # @option opts [Charge] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingRunsApi.create ..."
      end

      result = @api_client.call("post", "billing_runs", params: @api_client.object_to_http_body(params[:body]),
                                opts: { return_type: "BillingRun" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingRunsApi#create\nData:#{result.inspect}"
      end

      result
    end
  end
end
