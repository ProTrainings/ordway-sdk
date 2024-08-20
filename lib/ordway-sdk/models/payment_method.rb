# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # PaymentMethod
  class PaymentMethod
    attr_accessor :customer_id,
      :customer_payment_gateway_id,
      :payment_type,
      :type,
      :account_number,
      :routing_number,
      :account_holder_name,
      :account_holder_type,
      :country,
      :expiry,
      :status,
      :default,
      :cvc

    def self.map(data)
      if data.is_a?(Hash)
        return map_payment_method(data)
      end

      data.map do |order_data|
        map_payment_method(order_data)
      end
    end

    def self.map_payment_method(data)
      PaymentMethod.new(data)
    end

    def initialize(attributes = {})
      nil unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:customer_payment_gateway_id)
        self.customer_payment_gateway_id = attributes[:customer_payment_gateway_id]
      end
      if attributes.key?(:payment_type)
        self.payment_type = attributes[:payment_type]
      end
      if attributes.key?(:type)
        self.type = attributes[:type]
      end
      if attributes.key?(:account_number)
        self.account_number = attributes[:account_number]
      end
      if attributes.key?(:routing_number)
        self.routing_number = attributes[:routing_number]
      end
      if attributes.key?(:account_holder_name)
        self.account_holder_name = attributes[:account_holder_name]
      end
      if attributes.key?(:account_holder_type)
        self.account_holder_type = attributes[:account_holder_type]
      end
      if attributes.key?(:country)
        self.country = attributes[:country]
      end
      if attributes.key?(:expiry)
        self.expiry = attributes[:expiry]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:default)
        self.default = attributes[:default]
      end
      if attributes.key?(:cvc)
        self.cvc = attributes[:cvc]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
