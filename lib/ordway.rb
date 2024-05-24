# Common files
require "ordway/api_client"
require "ordway/version"
require "ordway/configuration"

# Models
require "ordway/models/customer"

# APIs
require "ordway/api/customers_api"

module Ordway
  class << self
    # Customize default settings for the SDK using block.
    #   Ordway.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
