require "spec_helper"

describe "SubscriptionPlan" do
  context "test an instance of SubscriptionPlan" do
    it "should create an instance of SubscriptionPlan" do
      subscription_plan = Ordway::SubscriptionPlan.new
      expect(subscription_plan).to be_instance_of(Ordway::SubscriptionPlan)
    end
  end
end
