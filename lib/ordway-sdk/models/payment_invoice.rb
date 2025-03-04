# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # PaymentInvoice
  class PaymentInvoice
    attr_accessor :id,
      :amount_applied,
      :created_date,
      :updated_date,
      :created_by,
      :updated_by

    def self.map(data)
      if data.is_a?(Hash)
        return map_payment_invoice(data)
      end

      data.map do |order_data|
        map_payment_invoice(order_data)
      end
    end

    def self.map_payment_invoice(data)
      PaymentInvoice.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:amount_applied)
        self.amount_applied = attributes[:amount_applied]
      end
      if attributes.key?(:created_date)
        self.created_date = attributes[:created_date]
      end
      if attributes.key?(:updated_date)
        self.updated_date = attributes[:updated_date]
      end
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
