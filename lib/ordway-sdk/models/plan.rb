# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Plan
  class Plan
    attr_accessor :id,
      :name,
      :description,
      :created_by,
      :updated_by,
      :created_date,
      :charges,
      :public_url,
      :status,
      :custom_fields

    def self.map(data)
      if data.is_a?(Hash)
        return map_plan(data)
      end

      data.map do |plan_data|
        map_plan(plan_data)
      end
    end

    def self.map_plan(data)
      data[:charges] = Charge.map(data["charges"]) if data["charges"].present?
      Plan.new(data)
    end

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
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
      if attributes.key?(:created_date)
        self.created_date = attributes[:created_date]
      end
      if attributes.key?(:charges)
        self.charges = attributes[:charges]
      end
      if attributes.key?(:public_url)
        self.public_url = attributes[:public_url]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
