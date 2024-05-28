require "spec_helper"

describe "Configuration" do
  context "test an instance of Configuration" do
    it "should create an instance of Configuration" do
      config = Ordway::Configuration.new
      expect(config).to be_instance_of(Ordway::Configuration)
    end
  end
end
