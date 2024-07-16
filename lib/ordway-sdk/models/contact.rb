# rubocop:disable Metrics/CyclomaticComplexity

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
      :id,
      :name,
      :first_name,
      :last_name,
      :address1,
      :address2,
      :city,
      :state,
      :zip,
      :county,
      :country

    def self.map(data)
      return map_contact(data) if data.is_a?(Hash)

      data.map do |contact_data|
        map_contact(contact_data)
      end
    end

    def self.map_contact(data)
      Contact.new(data)
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
        self.first_name = attributes[:first_name] || ""
      end

      if attributes.key?(:last_name)
        self.last_name = attributes[:last_name] || ""
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

      if attributes.key?(:address1)
        self.address1 = attributes[:address1]
      end
      if attributes.key?(:address2)
        self.address2 = attributes[:address2]
      end
      if attributes.key?(:state)
        self.state =  attributes[:state]
      end
      if attributes.key?(:city)
        self.city = attributes[:city]
      end
      if attributes.key?(:zip)
        self.zip =  attributes[:zip]
      end
      if attributes.key?(:county)
        self.county = attributes[:county]
      end
      if attributes.key?(:country)
        self.country = attributes[:country]
      end
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
