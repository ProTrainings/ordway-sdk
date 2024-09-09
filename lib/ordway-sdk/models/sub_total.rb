module Ordway
  class SubTotal
    attr_accessor :subtotal_name, :value

    def self.map(data)
      if data.is_a?(Hash)
        return map_sub_total(data)
      end

      data.map do |sub_total_data|
        map_sub_total(sub_total_data)
      end
    end

    def self.map_sub_total(data)
      SubTotal.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:subtotal_name)
        self.subtotal_name = attributes[:subtotal_name]
      end
      if attributes.key?(:value)
        self.value = attributes[:value]
      end
    end
  end
end
