require "spec_helper"

describe "PaymentRun" do
  context "test an instance of PaymentRun" do
    it "should create an instance of PaymentRun" do
      payment = Ordway::PaymentRun.new
      expect(payment).to be_instance_of(Ordway::PaymentRun)
    end
  end
end
