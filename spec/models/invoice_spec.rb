require "spec_helper"

describe "Invoice" do
  context "test an instance of Invoice" do
    it "should create an instance of Invoice" do
      invoice = Ordway::Invoice.new
      expect(invoice).to be_instance_of(Ordway::Invoice)
    end
  end
end
