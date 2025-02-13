# Common files
require "ordway-sdk/api_client"
require "ordway-sdk/mock_api_client"
require "ordway-sdk/version"
require "ordway-sdk/configuration"
require "ordway-sdk/response"

# Models
require "ordway-sdk/models/customer"
require "ordway-sdk/models/contact"
require "ordway-sdk/models/chart_of_account"
require "ordway-sdk/models/product"
require "ordway-sdk/models/transaction_type"
require "ordway-sdk/models/plan"
require "ordway-sdk/models/payment"
require "ordway-sdk/models/payment_invoice"
require "ordway-sdk/models/payment_refund"
require "ordway-sdk/models/payment_method"
require "ordway-sdk/models/charge"
require "ordway-sdk/models/tier"
require "ordway-sdk/models/subscription"
require "ordway-sdk/models/subscription_plan"
require "ordway-sdk/models/order"
require "ordway-sdk/models/line_item"
require "ordway-sdk/models/invoice"
require "ordway-sdk/models/invoice_line_item"
require "ordway-sdk/models/tax_line"
require "ordway-sdk/models/sub_total"

# APIs
require "ordway-sdk/api/customers_api"
require "ordway-sdk/api/contacts_api"
require "ordway-sdk/api/chart_of_accounts_api"
require "ordway-sdk/api/products_api"
require "ordway-sdk/api/plans_api"
require "ordway-sdk/api/charges_api"
require "ordway-sdk/api/subscriptions_api"
require "ordway-sdk/api/orders_api"
require "ordway-sdk/api/payments_api"
require "ordway-sdk/api/payment_methods_api"
require "ordway-sdk/api/invoices_api"

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
