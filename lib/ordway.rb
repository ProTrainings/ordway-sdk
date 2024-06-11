# Common files
require "ordway-sdk/api_client"
require "ordway-sdk/version"
require "ordway-sdk/configuration"
require "ordway-sdk/response"

# Models
require "ordway-sdk/models/customer"
require "ordway-sdk/models/contact"

# APIs
require "ordway-sdk/api/customers_api"
require "ordway-sdk/api/contacts_api"

module Ordway
  class << self
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
