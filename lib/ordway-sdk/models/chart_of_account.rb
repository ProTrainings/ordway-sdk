# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # ChartOfAccount
  class ChartOfAccount
    attr_accessor :code,
      :name,
      :account_type,
      :sub_type,
      :parent_account,
      :status,
      :description,
      :created_by,
      :updated_by,
      :created_date,
      :updated_date

    def self.map(data)
      if data.is_a?(Hash)
        return map_chart_of_account(data)
      end

      data.map do |chart_of_account_data|
        map_chart_of_account(chart_of_account_data)
      end
    end

    def self.map_chart_of_account(data)
      ChartOfAccount.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:code)
        self.name = attributes[:code]
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end
      if attributes.key?(:account_type)
        self.account_type = attributes[:account_type]
      end
      if attributes.key?(:sub_type)
        self.sub_type = attributes[:sub_type]
      end
      if attributes.key?(:parent_account)
        self.parent_account = attributes[:parent_account]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
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
      if attributes.key?(:updated_date)
        self.updated_date = attributes[:updated_date]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
