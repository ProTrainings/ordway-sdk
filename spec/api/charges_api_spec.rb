require "spec_helper"

describe "ChargesApi" do
  context "test an instance of ChargesApi" do
    it "should create an instance of ChargesApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::ChargesApi.new(client)).to be_instance_of(Ordway::ChargesApi)
    end
  end

  # Create Charge
  context "create test" do
    it "should work" do
      response = Ordway::Charge.new(id: "124")
      new_resource = double
      allow(Ordway::ChargesApi).to receive(:new).and_return(new_resource)
      allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

      contact = Ordway::Charge.new(name: "test")
      result = Ordway::ChargesApi.new.create({ body: contact })
      expect(result.success?).to eql(true)
    end
  end
end
