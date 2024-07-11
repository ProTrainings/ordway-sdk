require "spec_helper"

describe "Subscription" do
  context "test an instance of Subscription" do
    it "should create an instance of Subscription" do
      subscription = Ordway::Subscription.new
      expect(subscription).to be_instance_of(Ordway::Subscription)
    end
  end
end
