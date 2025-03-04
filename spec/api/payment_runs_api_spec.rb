require "spec_helper"

describe "PaymentRunsApi" do
  context "test an instance of PaymentRunsApi" do
    it "should create an instance of PaymentRunsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::PaymentRunsApi.new(client)).to be_instance_of(Ordway::PaymentRunsApi)
    end
  end

  # Create Payment Run
  it "create" do
    response = Ordway::PaymentRun.new(id: "124")
    new_resource = double
    allow(Ordway::PaymentRunsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::PaymentRun.new(name: "test")
    result = Ordway::PaymentRunsApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end
end
