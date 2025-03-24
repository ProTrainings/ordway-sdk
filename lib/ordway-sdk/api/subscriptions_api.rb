module Ordway
  class SubscriptionsApi
    def initialize(api_client = ApiClient.default)
      @api_client = if api_client.config.mock_api?
        MockApiClient.default
      else
        api_client
      end
    end

    # Get Subscription
    def get(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.get ..."
      end

      result = @api_client.call("get", "subscriptions/#{id}", opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#get\nData: #{result.inspect}"
      end

      result
    end

    def update(subscription_id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.update ..."
      end

      result = @api_client.call("put", "subscriptions/#{subscription_id}",
        params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#update\nData:#{result.inspect}"
      end

      result
    end

    def change(subscription_id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.change ..."
      end

      result = @api_client.call("put", "subscriptions/#{subscription_id}/change",
        params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#change\nData:#{result.inspect}"
      end

      result
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
