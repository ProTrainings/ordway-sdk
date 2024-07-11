# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Plan
  class Plan
    attr_accessor :id, :name, :description, :created_by, :updated_by, :charges, :status, :custom_field, :public_url

    def self.map(data)
      if data.is_a?(Hash)
        data[:charges] = Charge.map(data["charges"])
        return Plan.new(data)
      end

      plans = []
      plans << data.map do |plan_data|
        charges = []
        plan_data["charges"].map do |charge|
          charges << Charge.new(charge)
        end
        plan = Plan.new(plan_data)
        plan.charges = charges
        plan
      end

      plans
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
      if attributes.key?(:charges)
        self.charges = attributes[:charges]
      end
      if attributes.key?(:public_url)
        self.public_url = attributes[:public_url]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:custom_field)
        self.custom_field = attributes[:custom_field]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
