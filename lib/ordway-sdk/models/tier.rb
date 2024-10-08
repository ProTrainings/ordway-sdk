# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  class Tier
    attr_accessor :tier,
      :starting_unit,
      :ending_unit,
      :price,
      :type

    def self.map(data)
      if data.is_a?(Hash)
        return map_tier(data)
      end

      data.map do |charge_data|
        map_tier(charge_data)
      end
    end

    def self.map_tier(data)
      Tier.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:tier)
        self.tier = attributes[:tier]
      end
      if attributes.key?(:starting_unit)
        self.starting_unit = attributes[:starting_unit]
      end
      if attributes.key?(:ending_unit)
        self.ending_unit = attributes[:ending_unit]
      end
      if attributes.key?(:price)
        self.price = attributes[:price]
      end
      if attributes.key?(:type)
        self.type = attributes[:type]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
