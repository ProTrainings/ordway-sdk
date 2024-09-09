require "spec_helper"

describe "SubTotal" do
  context "test an instance of SubTotal" do
    it "should create an instance of SubTotal" do
      sub_total = Ordway::SubTotal.new
      expect(sub_total).to be_instance_of(Ordway::SubTotal)
    end
  end
end
