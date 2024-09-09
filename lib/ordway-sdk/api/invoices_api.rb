module Ordway
  class InvoicesApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Get Invoices
    def list(incoming_params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicesApi.list ..."
      end

      allowed_params = [:customer_id, :date, :page, :size, :sort, :status]
      params = incoming_params.slice(*allowed_params).compact

      result = @api_client.call("get", "invoices",
        params: params,
        opts: { return_type: "Invoice" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#list\nData: #{result.inspect}"
      end

      result
    end
  end
end
