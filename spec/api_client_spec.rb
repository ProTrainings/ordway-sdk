require "spec_helper"

describe "ApiClient" do
  context "test an instance of ApiClient" do
    it "should create an instance of ApiClient" do
      client = Ordway::ApiClient.new(@global_config)
      expect(client).to be_instance_of(Ordway::ApiClient)
    end
  end
end
