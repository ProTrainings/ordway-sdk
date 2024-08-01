# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Plan
  class Plan
    attr_accessor :id,
      :name,
      :description,
      :created_by,
      :updated_by,
      :charges,
      :status,
      :custom_fields,
      :public_url,
      :product_id,
      :product_name,
      :plan_id,
      :plan_name,
      :charge_id,
      :charge_name,
      :pricing_model,
      :list_price,
      :price_base,
      :quantity,
      :included_units,
      :discount,
      :effective_price,
      :charge_type,
      :billing_period,
      :charge_timing,
      :billing_period_start_alignment,
      :billing_day,
      :prorate_partial_periods,
      :prepayment_periods,
      :prepayment_amount,
      :charge_billing_date,
      :completion_date,
      :subscription_line_id,
      :current_period_start_date,
      :current_period_end_date,
      :billing_schedule_id,
      :charge_end_date,
      :plan_type,
      :renewal_increment_percent,
      :override_renewal_increment_percent,
      :charge_start_date,
      :unit_of_measure,
      :revenue_schedule_id,
      :backcharge_current_period,
      :tiers,
      :last_charge_date,
      :default_from_plan,
      :cmrr,
      :revenue_rule_id,
      :recognition_start_date,
      :custom_recognition_start_date,
      :custom_recognition_end_date,
      :transaction_posting_entries

    def self.map(data)
      if data.is_a?(Hash)
        return map_plan(data)
      end

      data.map do |plan_data|
        map_plan(plan_data)
      end
    end

    def self.map_plan(data)
      data[:charges] = Charge.map(data["charges"]) if data["charges"].present?
      data[:tiers] = Tier.map(data["tiers"]) if data["tiers"].present?
      if data["transaction_posting_entries"].present?
        data[:transaction_posting_entries] = TransactionType.map(data["transaction_posting_entries"])
      end
      Plan.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:product_id)
        self.product_id = attributes[:product_id]
      end
      if attributes.key?(:plan_id)
        self.plan_id = attributes[:plan_id]
      end
      if attributes.key?(:plan_name)
        self.plan_name = attributes[:plan_name]
      end
      if attributes.key?(:charge_id)
        self.charge_id = attributes[:charge_id]
      end
      if attributes.key?(:plan_type)
        self.plan_type = attributes[:plan_type]
      end
      if attributes.key?(:charge_name)
        self.charge_name = attributes[:charge_name]
      end
      if attributes.key?(:pricing_model)
        self.pricing_model = attributes[:pricing_model]
      end
      if attributes.key?(:list_price)
        self.list_price = attributes[:list_price]
      end
      if attributes.key?(:price_base)
        self.price_base = attributes[:price_base]
      end
      if attributes.key?(:quantity)
        self.quantity = attributes[:quantity]
      end
      if attributes.key?(:included_units)
        self.included_units = attributes[:included_units]
      end
      if attributes.key?(:discount)
        self.discount = attributes[:discount]
      end
      if attributes.key?(:effective_price)
        self.effective_price = attributes[:effective_price]
      end
      if attributes.key?(:charge_type)
        self.charge_type = attributes[:charge_type]
      end
      if attributes.key?(:billing_period)
        self.billing_period = attributes[:billing_period]
      end
      if attributes.key?(:charge_timing)
        self.charge_timing = attributes[:charge_timing]
      end
      if attributes.key?(:billing_period_start_alignment)
        self.billing_period_start_alignment = attributes[:billing_period_start_alignment]
      end
      if attributes.key?(:billing_day)
        self.billing_day = attributes[:billing_day]
      end
      if attributes.key?(:prorate_partial_periods)
        self.prorate_partial_periods = attributes[:prorate_partial_periods]
      end
      if attributes.key?(:prepayment_periods)
        self.prepayment_periods = attributes[:prepayment_periods]
      end
      if attributes.key?(:prepayment_amount)
        self.prepayment_amount = attributes[:prepayment_amount]
      end
      if attributes.key?(:charge_billing_date)
        self.charge_billing_date = attributes[:charge_billing_date]
      end
      if attributes.key?(:completion_date)
        self.completion_date = attributes[:completion_date]
      end
      if attributes.key?(:subscription_line_id)
        self.subscription_line_id = attributes[:subscription_line_id]
      end
      if attributes.key?(:current_period_start_date)
        self.current_period_start_date = attributes[:current_period_start_date]
      end
      if attributes.key?(:current_period_end_date)
        self.current_period_end_date = attributes[:current_period_end_date]
      end
      if attributes.key?(:billing_schedule_id)
        self.billing_schedule_id = attributes[:billing_schedule_id]
      end
      if attributes.key?(:charge_end_date)
        self.charge_end_date = attributes[:charge_end_date]
      end
      if attributes.key?(:renewal_increment_percent)
        self.renewal_increment_percent = attributes[:renewal_increment_percent]
      end
      if attributes.key?(:override_renewal_increment_percent)
        self.override_renewal_increment_percent = attributes[:override_renewal_increment_percent]
      end
      if attributes.key?(:charge_start_date)
        self.charge_start_date = attributes[:charge_start_date]
      end
      if attributes.key?(:unit_of_measure)
        self.unit_of_measure = attributes[:unit_of_measure]
      end
      if attributes.key?(:revenue_schedule_id)
        self.revenue_schedule_id = attributes[:revenue_schedule_id]
      end
      if attributes.key?(:backcharge_current_period)
        self.backcharge_current_period = attributes[:backcharge_current_period]
      end
      if attributes.key?(:tiers)
        self.tiers = attributes[:tiers]
      end
      if attributes.key?(:last_charge_date)
        self.last_charge_date = attributes[:last_charge_date]
      end
      if attributes.key?(:default_from_plan)
        self.default_from_plan = attributes[:default_from_plan]
      end
      if attributes.key?(:cmrr)
        self.cmrr = attributes[:cmrr]
      end
      if attributes.key?(:revenue_rule_id)
        self.revenue_rule_id = attributes[:revenue_rule_id]
      end
      if attributes.key?(:recognition_start_date)
        self.recognition_start_date = attributes[:recognition_start_date]
      end
      if attributes.key?(:custom_recognition_start_date)
        self.custom_recognition_start_date = attributes[:custom_recognition_start_date]
      end
      if attributes.key?(:custom_recognition_end_date)
        self.custom_recognition_end_date = attributes[:custom_recognition_end_date]
      end
      if attributes.key?(:transaction_posting_entries)
        self.transaction_posting_entries = attributes[:transaction_posting_entries]
      end

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:name)
        self.name = attributes[:name]
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
      if attributes.key?(:charges)
        self.charges = attributes[:charges]
      end
      if attributes.key?(:public_url)
        self.public_url = attributes[:public_url]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
