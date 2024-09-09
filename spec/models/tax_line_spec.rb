require "spec_helper"

describe "TaxLine" do
  context "test an instance of TaxLine" do
    it "should create an instance of TaxLine" do
      tax_line = Ordway::TaxLine.new
      expect(tax_line).to be_instance_of(Ordway::TaxLine)
    end
  end
end
