# rubocop:disable Metrics/CyclomaticComplexity
require "date"

module Ordway
  class Invoice
    attr_accessor :id,
      :customer_id,
      :billing_contact,
      :shipping_contact,
      :customer_name,
      :invoice_date,
      :due_date,
      :start_date,
      :end_date,
      :billing_run_id,
      :discount_display_name,
      :subtotal,
      :invoice_tax,
      :invoice_amount,
      :paid_amount,
      :balance,
      :status,
      :notes,
      :invoice_pdf_url,
      :currency,
      :exchange_rate,
      :payment_term_id,
      :payment_terms,
      :created_date,
      :updated_date,
      :emailed,
      :created_by,
      :updated_by,
      :line_items,
      :subtotals,
      :payments,
      :credits,
      :refunds,
      :custom_fields

    def self.map(data)
      if data.is_a?(Hash)
        return map_invoice(data)
      end

      data.map do |invoice_data|
        map_invoice(invoice_data)
      end
    end

    def self.map_invoice(data)
      data[:billing_contact] = Contact.map(data["billing_contact"]) if data["billing_contact"].present?
      data[:shipping_contact] = Contact.map(data["shipping_contact"]) if data["shipping_contact"].present?
      data[:line_items] = InvoiceLineItem.map(data["line_items"]) if data["line_items"].present?
      data[:sub_totals] = SubTotal.map(data["sub_totals"]) if data["sub_totals"].present?
      Invoice.new(data)
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:id)
        self.id = attributes[:id]
      end
      if attributes.key?(:customer_id)
        self.customer_id = attributes[:customer_id]
      end
      if attributes.key?(:billing_contact)
        self.billing_contact = attributes[:billing_contact]
      end
      if attributes.key?(:shipping_contact)
        self.shipping_contact = attributes[:shipping_contact]
      end
      if attributes.key?(:customer_name)
        self.customer_name = attributes[:customer_name]
      end
      if attributes.key?(:invoice_date)
        self.invoice_date = attributes[:invoice_date]
      end
      if attributes.key?(:due_date)
        self.due_date = attributes[:due_date]
      end
      if attributes.key?(:start_date)
        self.start_date = attributes[:start_date]
      end
      if attributes.key?(:end_date)
        self.end_date = attributes[:end_date]
      end
      if attributes.key?(:billing_run_id)
        self.billing_run_id = attributes[:billing_run_id]
      end
      if attributes.key?(:discount_display_name)
        self.discount_display_name = attributes[:discount_display_name]
      end
      if attributes.key?(:subtotal)
        self.subtotal = attributes[:subtotal]
      end
      if attributes.key?(:invoice_tax)
        self.invoice_tax = attributes[:invoice_tax]
      end
      if attributes.key?(:invoice_amount)
        self.invoice_amount = attributes[:invoice_amount]
      end
      if attributes.key?(:paid_amount)
        self.paid_amount = attributes[:paid_amount]
      end
      if attributes.key?(:balance)
        self.balance = attributes[:balance]
      end
      if attributes.key?(:status)
        self.status = attributes[:status]
      end
      if attributes.key?(:notes)
        self.notes = attributes[:notes]
      end
      if attributes.key?(:invoice_pdf_url)
        self.invoice_pdf_url = attributes[:invoice_pdf_url]
      end
      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
      if attributes.key?(:exchange_rate)
        self.exchange_rate = attributes[:exchange_rate]
      end
      if attributes.key?(:payment_term_id)
        self.payment_term_id = attributes[:payment_term_id]
      end
      if attributes.key?(:payment_terms)
        self.payment_terms = attributes[:payment_terms]
      end
      if attributes.key?(:created_date)
        self.created_date = attributes[:created_date]
      end
      if attributes.key?(:updated_date)
        self.updated_date = attributes[:updated_date]
      end
      if attributes.key?(:emailed)
        self.emailed = attributes[:emailed]
      end
      if attributes.key?(:created_by)
        self.created_by = attributes[:created_by]
      end
      if attributes.key?(:updated_by)
        self.updated_by = attributes[:updated_by]
      end
      if attributes.key?(:line_items)
        self.line_items = attributes[:line_items]
      end
      if attributes.key?(:subtotals)
        self.subtotals = attributes[:subtotals]
      end
      if attributes.key?(:payments)
        self.payments = attributes[:payments]
      end
      if attributes.key?(:credits)
        self.credits = attributes[:credits]
      end
      if attributes.key?(:refunds)
        self.refunds = attributes[:refunds]
      end
      if attributes.key?(:custom_fields)
        self.custom_fields = attributes[:custom_fields]
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
