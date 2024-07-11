module Ordway
  # TransactionType array.
  class TransactionType
    # Type of transaction for posting journal entries.
    # Types of transactions include Orders/Contracts, Invoice Posting, and Revenue Schedule.
    attr_accessor :transaction_type,
      :debit_account,
      :credit_account

    def self.map(data)
      return map_transaction_type(data) if data.is_a?(TransactionType)

      data.map do |transaction_type_data|
        map_transaction_type(transaction_type_data)
      end
    end

    def self.map_transaction_type(data)
      TransactionType.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:transaction_type)
        self.transaction_type = attributes[:transaction_type]
      end

      if attributes.key?(:debit_account)
        self.debit_account = attributes[:debit_account]
      end

      if attributes.key?(:credit_account)
        self.credit_account = attributes[:credit_account]
      end
    end
  end
end
