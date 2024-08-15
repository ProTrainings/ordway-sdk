require "spec_helper"

describe "PaymentsApi" do
  context "test an instance of PaymentsApi" do
    it "should create an instance of PaymentsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::PaymentsApi.new(client)).to be_instance_of(Ordway::PaymentsApi)
    end
  end

  # Create Payment
  it "create" do
    response = Ordway::Payment.new(id: "124")
    new_resource = double
    allow(Ordway::PaymentsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

    contact = Ordway::Payment.new(name: "test")
    result = Ordway::PaymentsApi.new.create({ body: contact })
    expect(result.success?).to eql(true)
  end
end
