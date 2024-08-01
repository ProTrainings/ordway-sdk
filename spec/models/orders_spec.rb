require "spec_helper"

describe "Order" do
  context "test an instance of Order" do
    it "should create an instance of Order" do
      order = Ordway::Order.new
      expect(order).to be_instance_of(Ordway::Order)
    end
  end
end
