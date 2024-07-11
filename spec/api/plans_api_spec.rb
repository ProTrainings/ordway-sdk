require "spec_helper"

describe "PlansApi" do
  context "test an instance of PlansApi" do
    it "should create an instance of PlansApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::PlansApi.new(client)).to be_instance_of(Ordway::PlansApi)
    end
  end

  # List Plan
  it "list" do
    response = [Ordway::Plan.new(id: "124")]
    new_resource = double
    allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::PlansApi.new.list
    expect(result.success?).to eql(true)
  end

  # Get Plan
  it "get" do
    response = Ordway::Plan.new(id: "124")
    new_resource = double
    allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::PlansApi.new.get("C-1")
    expect(result.success?).to eql(true)
  end

  # Create Plan
  it "create" do
    response = Ordway::Plan.new(id: "124")
    new_resource = double
    allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Plan.new(name: "test")
    result = Ordway::PlansApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end

  # Update Plan
  it "update" do
    response = Ordway::Plan.new(id: "124")
    new_resource = double
    allow(Ordway::PlansApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Plan.new(name: "Testing123")

    result = Ordway::PlansApi.new.update("CT-90", { body: contact })
    expect(result.success?).to eql(true)
  end
end
