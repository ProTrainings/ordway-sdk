# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  class InvoiceLineItem
    attr_accessor :line_no,
      :subscription_id,
      :customer_id,
      :customer_name,
      :product_id,
      :product_name,
      :plan_id,
      :plan_name,
      :charge_id,
      :order_id,
      :charge_name,
      :charge_type,
      :description,
      :start_date,
      :end_date,
      :unit_price,
      :list_price,
      :list_price_base,
      :taxable,
      :quantity,
      :included_quantity,
      :discount,
      :effective_price,
      :line_tax,
      :tax_lines,
      :applied_tiers,
      :custom_fields

    def self.map(data)
      if data.is_a?(Hash)
        return map_invoice_line_item(data)
      end

      data.map do |invoice_line_item_data|
        map_invoice_line_item(invoice_line_item_data)
      end
    end

    def self.map_invoice_line_item(data)
      data[:tax_lines] = TaxLine.map(data["tax_lines"]) if data["tax_lines"].present?
      InvoiceLineItem.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:line_no)
        self.line_no = attributes[:line_no]
      end
      if attributes.key?(:order_id)
        self.order_id = attributes[:order_id]
      end
      if attributes.key?(:subscription_id)
        self.subscription_id = attributes[:subscription_id]
      end
      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:customer_name)
        self.customer_name = attributes[:customer_name]
      end
      if attributes.key?(:product_id)
        self.product_id = attributes[:product_id]
      end
      if attributes.key?(:product_name)
        self.product_name = attributes[:product_name]
      end
      if attributes.key?(:plan_id)
        self.plan_id = attributes[:plan_id]
      end
      if attributes.key?(:plan_name)
        self.plan_name = attributes[:plan_name]
      end
      if attributes.key?(:charge_id)
        self.charge_id = attributes[:charge_id]
      end
      if attributes.key?(:charge_name)
        self.charge_name = attributes[:charge_name]
      end
      if attributes.key?(:charge_type)
        self.charge_type = attributes[:charge_type]
      end
      if attributes.key?(:description)
        self.description = attributes[:description]
      end
      if attributes.key?(:start_date)
        self.start_date = attributes[:start_date]
      end
      if attributes.key?(:end_date)
        self.end_date = attributes[:end_date]
      end
      if attributes.key?(:unit_price)
        self.unit_price = attributes[:unit_price]
      end
      if attributes.key?(:list_price)
        self.list_price = attributes[:list_price]
      end
      if attributes.key?(:list_price_base)
        self.list_price_base = attributes[:list_price_base]
      end
      if attributes.key?(:taxable)
        self.taxable = attributes[:taxable]
      end
      if attributes.key?(:quantity)
        self.quantity = attributes[:quantity]
      end
      if attributes.key?(:included_quantity)
        self.included_quantity = attributes[:included_quantity]
      end
      if attributes.key?(:discount)
        self.discount = attributes[:discount]
      end
      if attributes.key?(:effective_price)
        self.effective_price = attributes[:effective_price]
      end
      if attributes.key?(:line_tax)
        self.line_tax = attributes[:line_tax]
      end
      if attributes.key?(:tax_lines)
        self.tax_lines = attributes[:tax_lines]
      end
      if attributes.key?(:applied_tiers)
        self.applied_tiers = attributes[:applied_tiers]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
