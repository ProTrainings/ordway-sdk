require "spec_helper"

describe "ChartOfAccountsApi" do
  context "test an instance of ChartOfAccountsApi" do
    it "should create an instance of ChartOfAccountsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::ChartOfAccountsApi.new(client)).to be_instance_of(Ordway::ChartOfAccountsApi)
    end
  end

  # List ChartOfAccounts
  it "list" do
    response = [Ordway::ChartOfAccount.new(code: "124")]
    new_resource = double
    allow(Ordway::ChartOfAccountsApi).to receive(:new).and_return(new_resource)
    allow(new_resource).to receive(:list).and_return(Ordway::Response.new(true, response))

    result = Ordway::ChartOfAccountsApi.new.list
    expect(result.success?).to eql(true)
  end
end
