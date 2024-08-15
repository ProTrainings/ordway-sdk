require "spec_helper"

describe "PaymentInvoice" do
  context "test an instance of PaymentInvoice" do
    it "should create an instance of PaymentInvoice" do
      payment_invoice = Ordway::PaymentInvoice.new
      expect(payment_invoice).to be_instance_of(Ordway::PaymentInvoice)
    end
  end
end
