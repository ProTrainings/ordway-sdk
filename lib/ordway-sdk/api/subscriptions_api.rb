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
    def list(incoming_params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.list ..."
      end

      allowed_params = [:customer_id, :status]
      params = incoming_params.slice(*allowed_params).compact

      result = @api_client.call("get", "subscriptions", params: params, opts: { return_type: "Subscription" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#list\nData: #{result.inspect}"
      end

      result
    end
  end
end
