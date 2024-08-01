# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # LineItem
  class LineItem
    attr_accessor :line_no,
      :product_id,
      :product_name,
      :description,
      :unit_price,
      :quantity,
      :discount,
      :effective_price

    def self.map(data)
      if data.is_a?(Hash)
        return map_line_item(data)
      end

      data.map do |line_item_data|
        map_line_item(line_item_data)
      end
    end

    def self.map_line_item(data)
      LineItem.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:line_no)
        self.line_no = attributes[:line_no]
      end
      if attributes.key?(:product_id)
        self.product_id = attributes[:product_id]
      end
      if attributes.key?(:product_name)
        self.product_name = attributes[:product_name]
      end
      if attributes.key?(:description)
        self.description = attributes[:description]
      end
      if attributes.key?(:unit_price)
        self.unit_price = attributes[:unit_price]
      end
      if attributes.key?(:quantity)
        self.quantity = attributes[:quantity]
      end
      if attributes.key?(:discount)
        self.discount = attributes[:discount]
      end
      if attributes.key?(:effective_price)
        self.effective_price = attributes[:effective_price]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
