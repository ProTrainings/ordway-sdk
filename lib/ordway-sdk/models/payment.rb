# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Payment
  class Payment
    attr_accessor :id,
      :customer_id,
      :payment_date,
      :notes,
      :status,
      :payment_amount,
      :fee_amount,
      :applied_amount,
      :unapplied_amount,
      :refunded_amount,
      :payment_type,
      :payment_method,
      :payment_token,
      :save_for_later,
      :currency,
      :reference_number,
      :auto_apply,
      :created_date,
      :updated_date,
      :created_by,
      :updated_by,
      :invoices,
      :refunds,
      :gl_account,
      :retried_attempts,
      :gateway_name,
      :email_status

    def self.map(data)
      if data.is_a?(Hash)
        return map_payment(data)
      end

      data.map do |order_data|
        map_payment(order_data)
      end
    end

    def self.map_payment(data)
      data[:invoices] = PaymentInvoice.map(data["invoices"]) if data["invoices"].present?
      data[:refunds] = PaymentRefund.map(data["refunds"]) if data["refunds"].present?
      Payment.new(data)
    end

    def initialize(attributes = {})
      nil unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:payment_date)
        self.payment_date = attributes[:payment_date]
      end
      if attributes.key?(:notes)
        self.notes = attributes[:notes]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:payment_amount)
        self.payment_amount = attributes[:payment_amount]
      end
      if attributes.key?(:fee_amount)
        self.fee_amount = attributes[:fee_amount]
      end
      if attributes.key?(:applied_amount)
        self.applied_amount = attributes[:applied_amount]
      end
      if attributes.key?(:unapplied_amount)
        self.unapplied_amount = attributes[:unapplied_amount]
      end
      if attributes.key?(:refunded_amount)
        self.refunded_amount = attributes[:refunded_amount]
      end
      if attributes.key?(:payment_type)
        self.payment_type = attributes[:payment_type]
      end
      if attributes.key?(:payment_method)
        self.payment_method = attributes[:payment_method]
      end
      if attributes.key?(:payment_token)
        self.payment_token = attributes[:payment_token]
      end
      if attributes.key?(:save_for_later)
        self.save_for_later = attributes[:save_for_later]
      end
      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
      if attributes.key?(:reference_number)
        self.reference_number = attributes[:reference_number]
      end
      if attributes.key?(:auto_apply)
        self.auto_apply = attributes[:auto_apply]
      end
      if attributes.key?(:created_date)
        self.created_date = attributes[:created_date]
      end
      if attributes.key?(:updated_date)
        self.updated_date = attributes[:updated_date]
      end
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
      if attributes.key?(:invoices)
        self.invoices = attributes[:invoices]
      end
      if attributes.key?(:refunds)
        self.refunds = attributes[:refunds]
      end
      if attributes.key?(:gl_account)
        self.gl_account = attributes[:gl_account]
      end
      if attributes.key?(:retried_attempts)
        self.retried_attempts = attributes[:retried_attempts]
      end
      if attributes.key?(:gateway_name)
        self.gateway_name = attributes[:gateway_name]
      end
      if attributes.key?(:email_status)
        self.email_status = attributes[:email_status]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
