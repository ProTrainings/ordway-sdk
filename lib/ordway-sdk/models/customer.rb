# rubocop:disable Metrics/CyclomaticComplexity
require "date"

module Ordway
  # Customers array.
  class Customer
    # Unique ID identifying the Customer. Based on the document numbering setting, can be
    # specified by the user or system will auto-generate one.
    attr_accessor :id

    # The name of the Customer to be displayed in the UI and Invoices.
    attr_accessor :name

    # Description of a business or individual.
    attr_accessor :description

    # Id of the Parent Customer account.
    attr_accessor :parent_customer

    # Can be either \"business\" or \"consumer.\" If nil, the default value is \"business.\"
    attr_accessor :customer_type

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

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      if attributes.key?(:parent_customer)
        self.parent_customer = attributes[:parent_customer]
      end

      self.customer_type = if attributes.key?(:customer_type)
                             attributes[:customer_type]
                           else
                             "business"
                           end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
