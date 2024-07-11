module Ordway
  class PlansApi
    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get plans
    def list
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlansApi.list ..."
      end

      result = @api_client.call("get", "plans", opts: { return_type: "Plan" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlansApi#list\nData: #{result.inspect}"
      end

      result
    end

    # Create Plan
    # @option opts [Plan] :body
    def create(params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlansApi.create ..."
      end

      result = @api_client.call("post", "plans", params: @api_client.object_to_http_body(params[:body]),
        opts: { return_type: "Plan" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlansApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Get Plan
    def get(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlansApi.get ..."
      end

      result = @api_client.call("get", "plans/#{id}", opts: { return_type: "Plan" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlansApi#get\nData: #{result.inspect}"
      end

      result
    end

    # Update Plan
    # @option opts [Plan] :body
    def update(id, params = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlansApi.update ..."
      end

      result = @api_client.call("put", "plans/#{id}",
        params: @api_client.object_to_http_body(params[:body]), opts: { return_type: "Plan" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlansApi#update\nData:#{result.inspect}"
      end

      result
    end
  end
end
