require "spec_helper"

describe "Customer" do
  context "test an instance of Customer" do
    it "should create an instance of Customer" do
      customer = Ordway::Customer.new
      expect(customer).to be_instance_of(Ordway::Customer)
    end
  end
end
