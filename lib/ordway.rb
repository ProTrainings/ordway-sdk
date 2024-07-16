# Common files
require "ordway-sdk/api_client"
require "ordway-sdk/mock_api_client"
require "ordway-sdk/version"
require "ordway-sdk/configuration"
require "ordway-sdk/response"

# Models
require "ordway-sdk/models/customer"
require "ordway-sdk/models/contact"
require "ordway-sdk/models/product"
require "ordway-sdk/models/transaction_type"
require "ordway-sdk/models/plan"
require "ordway-sdk/models/charge"
require "ordway-sdk/models/tier"
require "ordway-sdk/models/subscription"

# APIs
require "ordway-sdk/api/customers_api"
require "ordway-sdk/api/contacts_api"
require "ordway-sdk/api/products_api"
require "ordway-sdk/api/plans_api"
require "ordway-sdk/api/charges_api"
require "ordway-sdk/api/subscriptions_api"

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
