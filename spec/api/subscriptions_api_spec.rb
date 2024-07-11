require "spec_helper"

describe "SubscriptionsApi" do
  context "test an instance of SubscriptionsApi" do
    it "should create an instance of SubscriptionsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::SubscriptionsApi.new(client)).to be_instance_of(Ordway::SubscriptionsApi)
    end
  end

  # List Subscription
  it "list" do
    response = [Ordway::Subscription.new(id: "124")]
    new_resource = double
    allow(Ordway::SubscriptionsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::SubscriptionsApi.new.list
    expect(result.success?).to eql(true)
  end

  # Get Subscription
  it "get" do
    response = Ordway::Subscription.new(id: "124")
    new_resource = double
    allow(Ordway::SubscriptionsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:get).and_return(Ordway::Response.new(true, response))

    result = Ordway::SubscriptionsApi.new.get("C-1")
    expect(result.success?).to eql(true)
  end

  # List Subscription
  it "list" do
    response = [Ordway::Subscription.new(id: "124")]
    new_resource = double
    allow(Ordway::SubscriptionsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::SubscriptionsApi.new.list
    expect(result.success?).to eql(true)
  end

  # Create Subscription
  it "create" do
    response = Ordway::Subscription.new(id: "124")
    new_resource = double
    allow(Ordway::SubscriptionsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Subscription.new(name: "test")
    result = Ordway::SubscriptionsApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end
end
