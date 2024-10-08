require "spec_helper"

describe "ProductsApi" do
  context "test an instance of ProductsApi" do
    it "should create an instance of ProductsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::ProductsApi.new(client)).to be_instance_of(Ordway::ProductsApi)
    end
  end

  # List Product
  it "list" do
    response = [Ordway::Product.new(id: "124")]
    new_resource = double
    allow(Ordway::ProductsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::ProductsApi.new.list
    expect(result.success?).to eql(true)
  end

  # Get Product
  it "get" do
    response = Ordway::Product.new(id: "124")
    new_resource = double
    allow(Ordway::ProductsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::ProductsApi.new.get("C-1")
    expect(result.success?).to eql(true)
  end

  # Create Contact
  it "create" do
    response = Ordway::Product.new(id: "124")
    new_resource = double
    allow(Ordway::ProductsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Product.new(name: "test")
    result = Ordway::ProductsApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end

  # Update Customer
  it "update" do
    response = Ordway::Product.new(id: "124")
    new_resource = double
    allow(Ordway::ProductsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Product.new(name: "Testing123")

    result = Ordway::ProductsApi.new.update("CT-90", { body: contact })
    expect(result.success?).to eql(true)
  end
end
