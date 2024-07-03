require "spec_helper"

describe "Product" do
  context "test an instance of Product" do
    it "should create an instance of Product" do
      product = Ordway::Product.new
      expect(product).to be_instance_of(Ordway::Product)
    end
  end
end
