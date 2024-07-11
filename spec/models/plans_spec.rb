require "spec_helper"

describe "Plan" do
  context "test an instance of Plan" do
    it "should create an instance of Plan" do
      plan = Ordway::Plan.new
      expect(plan).to be_instance_of(Ordway::Plan)
    end
  end
end
