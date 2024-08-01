require "spec_helper"

describe "LineItem" do
  context "test an instance of LineItem" do
    it "should create an instance of LineItem" do
      line_item = Ordway::LineItem.new
      expect(line_item).to be_instance_of(Ordway::LineItem)
    end
  end
end
