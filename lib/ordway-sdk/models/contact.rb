module Ordway
  # Customers array.
  class Contact
    attr_accessor :display_name, :phone_number, :customer_id, :id

    def self.map(data)
      return Contact.new(data) if data.is_a?(Hash)

      data.map do |contact_data|
        Contact.new(contact_data)
      end
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end

      if attributes.key?(:display_name)
        self.display_name = attributes[:display_name]
      end

      if attributes.key?(:phone_number)
        self.phone_number = attributes[:phone_number]
      end
    end
  end
end
