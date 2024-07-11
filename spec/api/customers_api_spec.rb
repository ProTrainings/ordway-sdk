require "spec_helper"

describe "CustomersApi" do
  context "test an instance of CustomersApi" do
    it "should create an instance of CustomersApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::CustomersApi.new(client)).to be_instance_of(Ordway::CustomersApi)
    end
  end

  # List Customer
  it "list" do
    response = [Ordway::Customer.new(id: "124")]
    new_resource = double
    allow(Ordway::CustomersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::CustomersApi.new.list
    expect(result.success?).to eql(true)
  end

  # Get Customer
  it "get" do
    response = Ordway::Customer.new(id: "124")
    new_resource = double
    allow(Ordway::CustomersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::CustomersApi.new.get("C-1")
    expect(result.success?).to eql(true)
  end

  # Create Customer
  it "create" do
    response = Ordway::Customer.new(id: "124")
    new_resource = double
    allow(Ordway::CustomersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    customer = Ordway::Customer.new(
      name: "Testing123",
      id: "C-1",
      description: "Some new org"
    )
    result = Ordway::CustomersApi.new.create({ body: customer })
    expect(result.success?).to eql(true)
  end

  # Update Customer
  it "update" do
    response = Ordway::Customer.new(id: "124")
    new_resource = double
    allow(Ordway::CustomersApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

    customer = Ordway::Customer.new(
      name: "Testing123",
      id: "C-1",
      description: "Some updated description"
    )
    result = Ordway::CustomersApi.new.update("C-1", { body: customer })
    expect(result.success?).to eql(true)
  end
end
