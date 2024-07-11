require "spec_helper"

describe "Product" do
  context "test an instance of Charge" do
    it "should create an instance of Charge" do
      charge = Ordway::Charge.new
      expect(charge).to be_instance_of(Ordway::Charge)
    end
  end
end
