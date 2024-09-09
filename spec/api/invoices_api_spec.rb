require "spec_helper"

describe "InvoicesApi" do
  context "test an instance of InvoicesApi" do
    it "should create an instance of InvoicesApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::InvoicesApi.new(client)).to be_instance_of(Ordway::InvoicesApi)
    end
  end

  # List Invoices
  it "list" do
    response = [Ordway::Invoice.new(id: "124")]
    new_resource = double
    allow(Ordway::InvoicesApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::InvoicesApi.new.list
    expect(result.success?).to eql(true)
  end
end
