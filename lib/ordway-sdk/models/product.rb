# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Products array.
  class Product
    attr_accessor :id, :name, :status, :taxable, :price, :revenue_rule_id, :recognition_start_date,
      :transaction_posting_entries

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
      else
        "revenue_rule_id associate with ‘Recognize on Invoicing’ method"
      end

      # default is invoice date
      self.recognition_start_date = if attributes.key?(:recognition_start_date)
        attributes[:recognition_start_date]
      else
        "Invoice Date"
      end

      if attributes.key?(:transaction_posting_entries) &&
         (value = attributes[:transaction_posting_entries]).is_a?(Array)
        self.transaction_posting_entries = value
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
