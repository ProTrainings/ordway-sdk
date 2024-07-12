# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  class Subscription
    attr_accessor :id,
      :customer_id,
      :status,
      :billing_start_date,
      :service_start_date,
      :order_placed_at,
      :contract_effective_date,
      :cancellation_date,
      :cancellation_type,
      :auto_renew,
      :currency,
      :payment_terms,
      :cmrr,
      :discounted_cmrr,
      :separate_invoice,
      :notes,
      :coupon_code,
      :version,
      :version_type,
      :contract_term,
      :renewal_term,
      :current_term_start_date,
      :current_term_end_date,
      :renewal_increment_percent,
      :plans,
      :bill_contact_id,
      :shipping_contact_id,
      :updated_date,
      :created_date,
      :created_by,
      :updated_by,
      :custom_fields,
      :tcv,
      :defer_start_date,
      :billing_period

    def self.map(data)
      if data.is_a?(Hash)
        return map_subscription(data)
      end

      data.map do |subscription_data|
        map_subscription(subscription_data)
      end
    end

    def self.map_subscription(data)
      data[:plans] = Plan.map(data["plans"]) if data["plans"].present?
      Subscription.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:billing_period)
        self.billing_period = attributes[:billing_period]
      end
      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:billing_start_date)
        self.billing_start_date = attributes[:billing_start_date]
      end
      if attributes.key?(:service_start_date)
        self.service_start_date = attributes[:service_start_date]
      end
      if attributes.key?(:order_placed_at)
        self.order_placed_at = attributes[:order_placed_at]
      end
      if attributes.key?(:contract_effective_date)
        self.contract_effective_date = attributes[:contract_effective_date]
      end
      if attributes.key?(:cancellation_date)
        self.cancellation_date = attributes[:cancellation_date]
      end
      if attributes.key?(:cancellation_type)
        self.cancellation_type = attributes[:cancellation_type]
      end
      if attributes.key?(:auto_renew)
        self.auto_renew = attributes[:auto_renew]
      end
      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
      if attributes.key?(:payment_terms)
        self.payment_terms = attributes[:payment_terms]
      end
      if attributes.key?(:cmrr)
        self.cmrr = attributes[:cmrr]
      end
      if attributes.key?(:discounted_cmrr)
        self.discounted_cmrr = attributes[:discounted_cmrr]
      end
      if attributes.key?(:separate_invoice)
        self.separate_invoice = attributes[:separate_invoice]
      end
      if attributes.key?(:notes)
        self.notes = attributes[:notes]
      end
      if attributes.key?(:coupon_code)
        self.coupon_code = attributes[:coupon_code]
      end
      if attributes.key?(:version)
        self.version = attributes[:version]
      end
      if attributes.key?(:version_type)
        self.version_type = attributes[:version_type]
      end
      if attributes.key?(:contract_term)
        self.contract_term = attributes[:contract_term]
      end
      if attributes.key?(:renewal_term)
        self.renewal_term = attributes[:renewal_term]
      end
      if attributes.key?(:current_term_start_date)
        self.current_term_start_date = attributes[:current_term_start_date]
      end
      if attributes.key?(:current_term_end_date)
        self.current_term_end_date = attributes[:current_term_end_date]
      end
      if attributes.key?(:renewal_increment_percent)
        self.renewal_increment_percent = attributes[:renewal_increment_percent]
      end
      if attributes.key?(:plans)
        self.plans = attributes[:plans]
      end
      if attributes.key?(:bill_contact_id)
        self.bill_contact_id = attributes[:bill_contact_id]
      end
      if attributes.key?(:shipping_contact_id)
        self.shipping_contact_id = attributes[:shipping_contact_id]
      end
      if attributes.key?(:updated_date)
        self.updated_date = attributes[:updated_date]
      end
      if attributes.key?(:created_date)
        self.created_date = attributes[:created_date]
      end
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
      if attributes.key?(:tcv)
        self.tcv = attributes[:tcv]
      end
      if attributes.key?(:defer_start_date)
        self.defer_start_date = attributes[:defer_start_date]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
