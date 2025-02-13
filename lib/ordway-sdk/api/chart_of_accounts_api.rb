module Ordway
  class ChartOfAccountsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # List ChartOfAccounts
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChartOfAccountsApi.get ..."
      end

      result = @api_client.call("get", "chart_of_accounts", opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChartOfAccountsApi#get\nData: #{result.inspect}"
      end

      result
    end
  end
end
