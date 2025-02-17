require "spec_helper"

describe "ChartOfAccount" do
  context "test an instance of ChartOfAccount" do
    it "should create an instance of ChartOfAccount" do
      chart_of_account = Ordway::ChartOfAccount.new
      expect(chart_of_account).to be_instance_of(Ordway::ChartOfAccount)
    end
  end
end
