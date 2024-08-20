require "spec_helper"

describe "PaymentMethod" do
  context "test an instance of PaymentMethod" do
    it "should create an instance of PaymentMethod" do
      payment_method = Ordway::PaymentMethod.new
      expect(payment_method).to be_instance_of(Ordway::PaymentMethod)
    end
  end
end
