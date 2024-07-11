require "spec_helper"

describe "PlansApi" do
  context "test an instance of PlansApi" do
    it "should create an instance of PlansApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::PlansApi.new(client)).to be_instance_of(Ordway::PlansApi)
    end
  end

  # Create Plan
  context "create test" do
    it "should work" do
      response = Ordway::Plan.new(id: "124")
      new_resource = double
      allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
      allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

      contact = Ordway::Plan.new(name: "test")
      result = Ordway::PlansApi.new.create({ body: contact })
      expect(result.success?).to eql(true)
    end
  end

  # Update Plan
  context "update test" do
    it "should work" do
      response = Ordway::Plan.new(id: "124")
      new_resource = double
      allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
      allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

      contact = Ordway::Plan.new(name: "Testing123")

      result = Ordway::PlansApi.new.update("CT-90", { body: contact })
      expect(result.success?).to eql(true)
    end
  end
end
