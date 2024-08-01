require "spec_helper"

describe "OrdersApi" do
  context "test an instance of OrdersApi" do
    it "should create an instance of OrdersApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::OrdersApi.new(client)).to be_instance_of(Ordway::OrdersApi)
    end
  end

  # List Order
  it "list" do
    response = [Ordway::Order.new(id: "124")]
    new_resource = double
    allow(Ordway::OrdersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::OrdersApi.new.list
    expect(result.success?).to eql(true)
  end

  # Get Order
  it "get" do
    response = Ordway::Order.new(id: "124")
    new_resource = double
    allow(Ordway::OrdersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::OrdersApi.new.get("C-1")
    expect(result.success?).to eql(true)
  end

  # Create Order
  it "create" do
    response = Ordway::Order.new(id: "124")
    new_resource = double
    allow(Ordway::OrdersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    order = Ordway::Order.new(
      name: "Testing123",
      id: "C-1",
      description: "Some new org"
    )
    result = Ordway::OrdersApi.new.create({ body: order })
    expect(result.success?).to eql(true)
  end

  # Update Order
  it "update" do
    response = Ordway::Order.new(id: "124")
    new_resource = double
    allow(Ordway::OrdersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

    order = Ordway::Order.new(
      name: "Testing123",
      id: "C-1",
      description: "Some updated description"
    )
    result = Ordway::OrdersApi.new.update("C-1", { body: order })
    expect(result.success?).to eql(true)
  end
end
