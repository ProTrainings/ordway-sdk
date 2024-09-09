module Ordway
  class TaxLine
    attr_accessor :name, :value

    def self.map(data)
      if data.is_a?(Hash)
        return map_tax_line(data)
      end

      data.map do |tax_line_data|
        map_tax_line(tax_line_data)
      end
    end

    def self.map_tax_line(data)
      TaxLine.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:name)
        self.name = attributes[:name]
      end
      if attributes.key?(:value)
        self.value = attributes[:value]
      end
    end
  end
end
