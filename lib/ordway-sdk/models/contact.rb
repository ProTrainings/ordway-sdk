module Ordway
  # Customers array.
  class Contact
    attr_accessor :display_name,
      :phone,
      :mobile,
      :department,
      :job_title,
      :email,
      :customer_id,
      :id, :name, :first_name, :last_name

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

      if attributes.key?(:email)
        self.email = attributes[:email]
      end

      if attributes.key?(:job_title)
        self.job_title = attributes[:job_title]
      end

      if attributes.key?(:department)
        self.department = attributes[:department]
      end

      if attributes.key?(:first_name)
        self.first_name = attributes[:first_name]
      end

      if attributes.key?(:last_name)
        self.last_name = attributes[:last_name]
      end

      if attributes.key?(:display_name)
        self.display_name = attributes[:display_name]
      end

      if attributes.key?(:phone)
        self.phone = attributes[:phone]
      end

      if attributes.key?(:mobile)
        self.mobile = attributes[:mobile]
      end
    end
  end
end
