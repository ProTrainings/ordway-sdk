# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Lint/DuplicateMethods
module Ordway
  # Charge
  class Charge
    attr_accessor :id,
      :product_id,
      :name,
      :description,
      :type,
      :transaction_posting_entries,
      :recognition_start_date,
      :tiers,
      :revenue_rule_id,
      :default_from_product,
      :refund_units_on_cancel,
      :prepaid_units_expiry,
      :refill_prepaid_units_for,
      :refill_qty,
      :auto_refill_prepayment_units,
      :prepaid_units_enable,
      :custom_fields,
      :backcharge_current_period,
      :unused_prepayment_units,
      :included_units,
      :unit_of_measure,
      :prepayment_amount,
      :prepayment_periods,
      :prorate_partial_periods,
      :billing_period_start_alignment,
      :billing_day,
      :billing_period,
      :list_price_base,
      :charge_timing,
      :list_price,
      :pricing_model,
      :completion_date,
      :billing_date,
      :effective_date,
      :timing,
      :type

    def self.map(data)
      if data.is_a?(Hash)
        return map_charge(data)
      end

      data.map do |charge_data|
        map_charge(charge_data)
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
      if attributes.key?(:transaction_posting_entries)
        self.transaction_posting_entries = attributes[:transaction_posting_entries]
      end
      self.recognition_start_date = if attributes.key?(:recognition_start_date)
        attributes[:recognition_start_date]
      else
        "Invoice Date"
      end
      if attributes.key?(:tiers)
        self.tiers = attributes[:tiers]
      end
      if attributes.key?(:revenue_rule_id)
        self.revenue_rule_id = attributes[:revenue_rule_id]
      end
      if attributes.key?(:default_from_product)
        self.default_from_product = attributes[:default_from_product]
      end
      if attributes.key?(:refund_units_on_cancel)
        self.refund_units_on_cancel = attributes[:refund_units_on_cancel]
      end
      if attributes.key?(:prepaid_units_expiry)
        self.prepaid_units_expiry = attributes[:prepaid_units_expiry]
      end
      if attributes.key?(:refill_prepaid_units_for)
        self.refill_prepaid_units_for = attributes[:refill_prepaid_units_for]
      end
      if attributes.key?(:refill_qty)
        self.refill_qty = attributes[:refill_qty]
      end
      if attributes.key?(:auto_refill_prepayment_units)
        self.auto_refill_prepayment_units = attributes[:auto_refill_prepayment_units]
      end
      if attributes.key?(:prepaid_units_enable)
        self.prepaid_units_enable = attributes[:prepaid_units_enable]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
      if attributes.key?(:backcharge_current_period)
        self.backcharge_current_period = attributes[:backcharge_current_period]
      end
      if attributes.key?(:unused_prepayment_units)
        self.unused_prepayment_units = attributes[:unused_prepayment_units]
      end
      if attributes.key?(:included_units)
        self.included_units = attributes[:included_units]
      end
      if attributes.key?(:unit_of_measure)
        self.unit_of_measure = attributes[:unit_of_measure]
      end
      if attributes.key?(:prepayment_amount)
        self.prepayment_amount = attributes[:prepayment_amount]
      end
      if attributes.key?(:prepayment_periods)
        self.prepayment_periods = attributes[:prepayment_periods]
      end
      if attributes.key?(:prorate_partial_periods)
        self.prorate_partial_periods = attributes[:prorate_partial_periods]
      end
      if attributes.key?(:billing_period_start_alignment)
        self.billing_period_start_alignment = attributes[:billing_period_start_alignment]
      end
      if attributes.key?(:billing_day)
        self.billing_day = attributes[:billing_day]
      end
      if attributes.key?(:billing_period)
        self.billing_period = attributes[:billing_period]
      end
      if attributes.key?(:list_price_base)
        self.list_price_base = attributes[:list_price_base]
      end
      if attributes.key?(:charge_timing)
        self.charge_timing = attributes[:charge_timing]
      end
      if attributes.key?(:list_price)
        self.list_price = attributes[:list_price]
      end
      if attributes.key?(:pricing_model)
        self.pricing_model = attributes[:pricing_model]
      end
      if attributes.key?(:completion_date)
        self.completion_date = attributes[:completion_date]
      end
      if attributes.key?(:billing_date)
        self.billing_date = attributes[:billing_date]
      end
      if attributes.key?(:effective_date)
        self.effective_date = attributes[:effective_date]
      end
      if attributes.key?(:timing)
        self.timing = attributes[:timing]
      end
      if attributes.key?(:type)
        self.type = attributes[:type]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Lint/DuplicateMethods
