# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Order
  class Order
    attr_accessor :id,
      :invoice_id,
      :order_date,
      :customer_id,
      :status,
      :order_amount,
      :separate_invoice,
      :currency,
      :bill_contact_id,
      :shipping_contact_id,
      :payment_terms,
      :notes,
      :coupon_code,
      :line_items,
      :created_date,
      :updated_date,
      :created_by,
      :updated_by,
      :custom_fields

    def self.map(data)
      if data.is_a?(Hash)
        return map_order(data)
      end

      data.map do |order_data|
        map_order(order_data)
      end
    end

    def self.map_order(data)
      data[:line_items] = LineItem.map(data["line_items"]) if data["line_items"].present?
      Order.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:invoice_id)
        self.invoice_id = attributes[:invoice_id]
      end
      if attributes.key?(:order_date)
        self.order_date = attributes[:order_date]
      end
      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:order_amount)
        self.order_amount = attributes[:order_amount]
      end
      if attributes.key?(:separate_invoice)
        self.separate_invoice = attributes[:separate_invoice]
      end
      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
      if attributes.key?(:bill_contact_id)
        self.bill_contact_id = attributes[:bill_contact_id]
      end
      if attributes.key?(:shipping_contact_id)
        self.shipping_contact_id = attributes[:shipping_contact_id]
      end
      if attributes.key?(:payment_terms)
        self.payment_terms = attributes[:payment_terms]
      end
      if attributes.key?(:notes)
        self.notes = attributes[:notes]
      end
      if attributes.key?(:coupon_code)
        self.coupon_code = attributes[:coupon_code]
      end
      if attributes.key?(:line_items)
        self.line_items = attributes[:line_items]
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
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
