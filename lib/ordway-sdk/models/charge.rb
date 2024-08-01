# rubocop:disable Metrics/CyclomaticComplexity
module Ordway
  # Charge
  class Charge
    attr_accessor :id,
      :product_id,
      :name,
      :description,
      :type,
      :timing,
      :effective_date,
      :billing_date,
      :completion_date,
      :pricing_model,
      :list_price,
      :charge_timing,
      :list_price_base,
      :billing_period,
      :billing_day,
      :billing_period_start_alignment,
      :prorate_partial_periods,
      :prepayment_periods,
      :prepayment_amount,
      :unit_of_measure,
      :included_units,
      :unused_prepayment_units,
      :tiers,
      :backcharge_current_period,
      :custom_fields,
      :prepaid_units_enable,
      :auto_refill_prepayment_units,
      :refill_qty,
      :refill_prepaid_units_for,
      :prepaid_units_expiry,
      :refund_units_on_cancel,
      :default_from_product,
      :revenue_rule_id,
      :recognition_start_date,
      :transaction_posting_entries

    def self.map(data)
      if data.is_a?(Hash)
        return map_charge(data)
      end

      data.map do |plan_data|
        map_charge(plan_data)
      end
    end

    def self.map_charge(data)
      data[:tiers] = Tier.map(data["tiers"]) if data["tiers"].present?
      if data["transaction_posting_entries"].present?
        data[:transaction_posting_entries] = TransactionType.map(data["transaction_posting_entries"])
      end
      Charge.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:product_id)
        self.product_id = attributes[:product_id]
      end
      if attributes.key?(:name)
        self.name = attributes[:name]
      end
      if attributes.key?(:description)
        self.description = attributes[:description]
      end
      if attributes.key?(:type)
        self.type = attributes[:type]
      end
      if attributes.key?(:timing)
        self.timing = attributes[:timing]
      end
      if attributes.key?(:effective_date)
        self.effective_date = attributes[:effective_date]
      end
      if attributes.key?(:billing_date)
        self.billing_date = attributes[:billing_date]
      end
      if attributes.key?(:completion_date)
        self.completion_date = attributes[:completion_date]
      end
      if attributes.key?(:pricing_model)
        self.pricing_model = attributes[:pricing_model]
      end
      if attributes.key?(:list_price)
        self.list_price = attributes[:list_price]
      end
      if attributes.key?(:charge_timing)
        self.charge_timing = attributes[:charge_timing]
      end
      if attributes.key?(:list_price_base)
        self.list_price_base = attributes[:list_price_base]
      end
      if attributes.key?(:billing_period)
        self.billing_period = attributes[:billing_period]
      end
      if attributes.key?(:billing_day)
        self.billing_day = attributes[:billing_day]
      end
      if attributes.key?(:billing_period_start_alignment)
        self.billing_period_start_alignment = attributes[:billing_period_start_alignment]
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
      if attributes.key?(:unit_of_measure)
        self.unit_of_measure = attributes[:unit_of_measure]
      end
      if attributes.key?(:included_units)
        self.included_units = attributes[:included_units]
      end
      if attributes.key?(:unused_prepayment_units)
        self.unused_prepayment_units = attributes[:unused_prepayment_units]
      end
      if attributes.key?(:tiers)
        self.tiers = attributes[:tiers]
      end
      if attributes.key?(:backcharge_current_period)
        self.backcharge_current_period = attributes[:backcharge_current_period]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
      if attributes.key?(:prepaid_units_enable)
        self.prepaid_units_enable = attributes[:prepaid_units_enable]
      end
      if attributes.key?(:auto_refill_prepayment_units)
        self.auto_refill_prepayment_units = attributes[:auto_refill_prepayment_units]
      end
      if attributes.key?(:refill_qty)
        self.refill_qty = attributes[:refill_qty]
      end
      if attributes.key?(:refill_prepaid_units_for)
        self.refill_prepaid_units_for = attributes[:refill_prepaid_units_for]
      end
      if attributes.key?(:prepaid_units_expiry)
        self.prepaid_units_expiry = attributes[:prepaid_units_expiry]
      end
      if attributes.key?(:refund_units_on_cancel)
        self.refund_units_on_cancel = attributes[:refund_units_on_cancel]
      end
      if attributes.key?(:default_from_product)
        self.default_from_product = attributes[:default_from_product]
      end
      if attributes.key?(:revenue_rule_id)
        self.revenue_rule_id = attributes[:revenue_rule_id]
      end
      if attributes.key?(:recognition_start_date)
        self.recognition_start_date = attributes[:recognition_start_date]
      end
      if attributes.key?(:transaction_posting_entries)
        self.transaction_posting_entries = attributes[:transaction_posting_entries]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
