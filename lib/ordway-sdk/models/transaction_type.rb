# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # TransactionType array.
  class TransactionType
    # Type of transaction for posting journal entries. Types of transactions include Orders/Contracts, Invoice Posting, and Revenue Schedule.
    attr_accessor :transaction_type

    # Debit Account id for the Journal Entry.
    attr_accessor :debit_account

    # Credit Account id for the Journal Entry.
    attr_accessor :credit_account

    def self.map(data)
      return TransactionType.new(data) if data.is_a?(TransactionType)

      data.map do |transaction_type_data|
        TransactionType.new(transaction_type_data)
      end
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
# rubocop:enable Metrics/CyclomaticComplexity