require "spec_helper"

describe "PaymentRefund" do
  context "test an instance of PaymentRefund" do
    it "should create an instance of PaymentRefund" do
      payment_refund = Ordway::PaymentRefund.new
      expect(payment_refund).to be_instance_of(Ordway::PaymentRefund)
    end
  end
end
