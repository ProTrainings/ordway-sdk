require "spec_helper"

describe "ChargesApi" do
  context "test an instance of ChargesApi" do
    it "should create an instance of ChargesApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::ChargesApi.new(client)).to be_instance_of(Ordway::ChargesApi)
    end
  end

  # Get Charge
  it "get" do
    response = Ordway::Charge.new(id: "124")
    new_resource = double
    allow(Ordway::ChargesApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::ChargesApi.new.get("cahrge")
    expect(result.success?).to eql(true)
  end

  # List Charge
  it "list" do
    response = [Ordway::Charge.new(id: "124")]
    new_resource = double
    allow(Ordway::ChargesApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::ChargesApi.new.list("001")
    expect(result.success?).to eql(true)
  end

  # Create Charge
  it "create" do
    response = Ordway::Charge.new(id: "124")
    new_resource = double
    allow(Ordway::ChargesApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Charge.new(name: "test")
    result = Ordway::ChargesApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end
end
