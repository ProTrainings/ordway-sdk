require "spec_helper"

describe "Payment" do
  context "test an instance of Payment" do
    it "should create an instance of Payment" do
      payment = Ordway::Payment.new
      expect(payment).to be_instance_of(Ordway::Payment)
    end
  end
end
