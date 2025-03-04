# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # PaymentRun
  class PaymentRun
    attr_accessor :id,
      :status,
      :filter_options,
      :target_date,
      :success_count,
      :failure_count,
      :currency,
      :payments_total_value,
      :payments_success_value,
      :payments_failed_value,
      :refunds_total_value,
      :refunds_success_value,
      :refunds_failed_value,
      :retry_failed_payment,
      :payment_processing_surcharge,
      :created_by,
      :updated_by

    def self.map(data)
      if data.is_a?(Hash)
        return map_payment_run(data)
      end

      data.map do |plan_data|
        map_payment_run(plan_data)
      end
    end

    def self.map_payment_run(data)
      PaymentRun.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:filter_options)
        self.filter_options = attributes[:filter_options]
      end
      if attributes.key?(:target_date)
        self.target_date = attributes[:target_date]
      end
      if attributes.key?(:success_count)
        self.success_count = attributes[:success_count]
      end
      if attributes.key?(:failure_count)
        self.failure_count = attributes[:failure_count]
      end
      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
      if attributes.key?(:payments_total_value)
        self.payments_total_value = attributes[:payments_total_value]
      end
      if attributes.key?(:payments_success_value)
        self.payments_success_value = attributes[:payments_success_value]
      end
      if attributes.key?(:payments_failed_value)
        self.payments_failed_value = attributes[:payments_failed_value]
      end
      if attributes.key?(:refunds_total_value)
        self.refunds_total_value = attributes[:refunds_total_value]
      end
      if attributes.key?(:refunds_success_value)
        self.refunds_success_value = attributes[:refunds_success_value]
      end
      if attributes.key?(:refunds_failed_value)
        self.refunds_failed_value = attributes[:refunds_failed_value]
      end
      if attributes.key?(:retry_failed_payment)
        self.retry_failed_payment = attributes[:retry_failed_payment]
      end
      if attributes.key?(:payment_processing_surcharge)
        self.payment_processing_surcharge = attributes[:payment_processing_surcharge]
      end
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
