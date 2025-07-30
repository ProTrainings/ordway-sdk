# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Products array.
  class Product
    attr_accessor :id,
      :name,
      :status,
      :taxable,
      :price,
      :revenue_rule_id,
      :recognition_start_date,
      :transaction_posting_entries,
      :learn_product_id

    def self.map(data)
      if data.is_a?(Hash)
        return map_product(data)
      end

      data.map do |product_data|
        map_product(product_data)
      end
    end

    def self.map_product(data)
      if data["transaction_posting_entries"].present?
        data[:transaction_posting_entries] = TransactionType.map(data["transaction_posting_entries"])
      end
      Product.new(data)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:learn_product_id)
        self.learn_product_id = attributes[:learn_product_id]
      end

      # default is active
      self.status = if attributes.key?(:status)
        attributes[:status]
      else
        "Active"
      end

      # default is false
      self.taxable = if attributes.key?(:taxable)
        attributes[:taxable]
      else
        false
      end

      # default is zero
      self.price = if attributes.key?(:price)
        attributes[:price]
      else
        "0"
      end

      self.revenue_rule_id = if attributes.key?(:revenue_rule_id)
        attributes[:revenue_rule_id]
      end

      # default is invoice date
      self.recognition_start_date = if attributes.key?(:recognition_start_date)
        attributes[:recognition_start_date]
      else
        "Invoice Date"
      end

      if attributes.key?(:transaction_posting_entries)
        self.transaction_posting_entries = attributes[:transaction_posting_entries]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
