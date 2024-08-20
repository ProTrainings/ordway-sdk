require "spec_helper"

describe "PaymentMethodsApi" do
  context "test an instance of PaymentMethodsApi" do
    it "should create an instance of PaymentMethodsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::PaymentMethodsApi.new(client)).to be_instance_of(Ordway::PaymentMethodsApi)
    end
  end

  # Get Payment Method
  it "get" do
    response = Ordway::PaymentMethod.new(id: "124")
    new_resource = double
    allow(Ordway::PaymentMethodsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::PaymentMethodsApi.new.get("abc", "123")
    expect(result.success?).to eql(true)
  end

  # List Charge
  it "list" do
    response = [Ordway::Charge.new(id: "124")]
    new_resource = double
    allow(Ordway::PaymentMethodsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::PaymentMethodsApi.new.list("001")
    expect(result.success?).to eql(true)
  end

  # Create Charge
  it "create" do
    response = Ordway::Charge.new(id: "124")
    new_resource = double
    allow(Ordway::PaymentMethodsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Charge.new(name: "test")
    result = Ordway::PaymentMethodsApi.new.create("12", { body: contact })
    expect(result.success?).to eql(true)
  end
end
