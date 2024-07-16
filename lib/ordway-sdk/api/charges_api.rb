module Ordway
  class ChargesApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mocking_enabled
                      MockApiClient.default
                    else
                      api_client
                    end
    end

    # Create Charge
    # @option opts [Charge] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.create ..."
      end

      result = @api_client.call("post", "charges", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Charge" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#create\nData:#{result.inspect}"
      end

      result
    end

    # List Charges
    def list(plan_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.list ..."
      end

      result = @api_client.call("get", "plans/#{plan_id}/charges", opts: { return_type: "Charge" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#list\nData: #{result.inspect}"
      end

      result
    end

    # Get Charge
    def get(plan_id, id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.get ..."
      end

      result = @api_client.call("get", "plans/#{plan_id}/charges/#{id}", opts: { return_type: "Charge" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#get\nData: #{result.inspect}"
      end

      result
    end
  end
end
