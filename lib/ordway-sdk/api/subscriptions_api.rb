module Ordway
  class SubscriptionsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mocking_enabled
        MockApiClient.default
      else
        api_client
      end
    end

    # Create Subscription
    # @option opts [Subscription] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.create ..."
      end

      result = @api_client.call("post", "subscriptions", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Get Subscriptions
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.list ..."
      end

      result = @api_client.call("get", "subscriptions", opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#list\nData: #{result.inspect}"
      end

      result
    end
  end
end
