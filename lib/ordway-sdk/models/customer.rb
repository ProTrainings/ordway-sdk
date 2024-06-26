# rubocop:disable Metrics/CyclomaticComplexity
require "date"

module Ordway
  # Customers array.
  class Customer
    attr_accessor :id, :name, :description, :parent_customer, :customer_type, :edit_auto_pay, :auto_pay, :currency,
      :delivery_preferences, :billing_cycle_day, :bill_to_parent, :payment_terms, :tax_exempt, :billing_contact_id,
      :contacts, :payment_options

    def self.map(data)
      if data.is_a?(Hash)
        data[:contacts] = Contact.map(data["contacts"])
        return Customer.new(data)
      end

      customers = []
      customers << data.map do |customer_data|
        contacts = []
        customer_data["contacts"].map do |contact|
          contacts << Contact.new(contact)
        end
        customer = Customer.new(customer_data)
        customer.contacts = contacts
        customer
      end

      customers
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

      if attributes.key?(:contacts)
        self.contacts = attributes[:contacts]
      end

      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end

      if attributes.key?(:billing_contact_id)
        self.billing_contact_id = attributes[:billing_contact_id]
      end

      if attributes.key?(:tax_exempt)
        self.tax_exempt = attributes[:tax_exempt]
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

      if attributes.key?(:edit_auto_pay)
        self.edit_auto_pay = attributes[:edit_auto_pay]
      end

      if attributes.key?(:auto_pay)
        self.auto_pay = attributes[:auto_pay]
      end

      if attributes.key?(:delivery_preferences)
        self.delivery_preferences = attributes[:delivery_preferences]
      end

      if attributes.key?(:payment_options)
        self.payment_options = attributes[:payment_options]
      end

      if attributes.key?(:payment_terms)
        self.payment_terms = attributes[:payment_terms]
      end

      if attributes.key?(:billing_cycle_day)
        self.billing_cycle_day = attributes[:billing_cycle_day]
      end

      if attributes.key?(:bill_to_parent)
        self.bill_to_parent = attributes[:bill_to_parent]
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
