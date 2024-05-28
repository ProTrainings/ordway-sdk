# Common files
require "ordway-sdk/api_client"
require "ordway-sdk/api_error"
require "ordway-sdk/version"
require "ordway-sdk/configuration"
require "ordway-sdk/response"

# Models
require "ordway-sdk/models/customer"

# APIs
require "ordway-sdk/api/customers_api"

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
