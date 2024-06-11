module Ordway
  class ContactsApi
    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Contact
    # @option opts [Contact] :body
    def create(options = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.create ..."
      end

      result = @api_client.call("post", "contacts", params: @api_client.object_to_http_body(options[:body]),
        opts: { return_type: "Contact" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#create\nData:#{result.inspect}"
      end

      result
    end

    # Update Contact
    # @option opts [Contact] :body
    def update(id, options = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.update ..."
      end

      result = @api_client.call("put", "contacts/#{id}",
        params: @api_client.object_to_http_body(options[:body]), opts: { return_type: "Contact" })

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update\nData:#{result.inspect}"
      end

      result
    end
  end
end
