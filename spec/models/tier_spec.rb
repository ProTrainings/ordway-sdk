require "spec_helper"

describe "Tier" do
  context "test an instance of Tier" do
    it "should create an instance of Tier" do
      tier = Ordway::Tier.new
      expect(tier).to be_instance_of(Ordway::Tier)
    end
  end
end
