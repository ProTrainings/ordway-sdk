module Ordway
  # BillingSchedule
  class BillingRun
    attr_accessor :id,
                  :status,
                  :target_date,
                  :invoice_date,
                  :invoices_total,
                  :invoices_count,
                  :auto_post,
                  :send_after_post,
                  :do_not_email_if_invoice_balance_zero,
                  :do_not_email_if_auto_pay_is_on_with_payment_method,
                  :do_not_email_if_invoice_amount_zero,
                  :skip_zero_lines,
                  :currency,
                  :charge_type,
                  :filter_options,
                  :customer_filter_options,
                  :subscription_filter_options,
                  :created_by,
                  :updated_by,
                  :created_date,
                  :updated_date
    def self.map(data)
      if data.is_a?(Hash)
        return map_billing_run(data)
      end

      data.map do |plan_data|
        map_billing_run(plan_data)
      end
    end

    def self.map_billing_run(data)
      BillingRun.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:do_not_email_if_invoice_balance_zero)
        self.do_not_email_if_invoice_balance_zero = attributes[:do_not_email_if_invoice_balance_zero]
      end

      if attributes.key?(:do_not_email_if_invoice_amount_zero)
        self.do_not_email_if_invoice_amount_zero = attributes[:do_not_email_if_invoice_amount_zero]
      end

      if attributes.key?(:do_not_email_if_auto_pay_is_on_with_payment_method)
        self.do_not_email_if_auto_pay_is_on_with_payment_method = attributes[:do_not_email_if_auto_pay_is_on_with_payment_method]
      end

      if attributes.key?(:skip_zero_lines)
        self.skip_zero_lines = attributes[:skip_zero_lines]
      end

      if attributes.key?(:send_after_post)
        self.send_after_post = attributes[:send_after_post]
      end

      if attributes.key?(:auto_post)
        self.auto_post = attributes[:auto_post]
      end

      if attributes.key?(:status)
        self.status = attributes[:status]
      end

      if attributes.key?(:target_date)
        self.target_date = attributes[:target_date]
      end

      if attributes.key?(:invoice_date)
        self.invoice_date = attributes[:invoice_date]
      end

      if attributes.key?(:invoices_total)
        self.invoices_total = attributes[:invoices_total]
      end

      if attributes.key?(:invoices_count)
        self.invoices_count = attributes[:invoices_count]
      end

      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end

      if attributes.key?(:charge_type)
        self.charge_type = attributes[:charge_type]
      end

      if attributes.key?(:filter_options)
        self.filter_options = attributes[:filter_options]
      end

      if attributes.key?(:customer_filter_options)
        self.customer_filter_options = attributes[:customer_filter_options]
      end

      if attributes.key?(:subscription_filter_options)
        self.subscription_filter_options = attributes[:subscription_filter_options]
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