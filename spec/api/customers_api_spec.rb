require "spec_helper"

describe "CustomersApi" do
  before do
    # run before each test
    config = Ordway::Configuration.new
    config.scheme = "https"
    config.host = "test"
    config.base_path = "/api/v1"
    client = Ordway::ApiClient.new(config)
    @instance = Ordway::CustomersApi.new(client)
  end

  context "test an instance of CustomersApi" do
    it "should create an instance of CustomersApi" do
      expect(@instance).to be_instance_of(Ordway::CustomersApi)
    end
  end

  # Get Customer
  context 'get_customers test' do
      it 'should work' do
        VCR.use_cassette("get_ordway_customer") do
        result = @instance.get_customer("C-00001")
        expect(result.success?).to eql(true)
      end
    end
  end

  # Create Customer
  context 'create_customers test' do
    it 'should work' do
      VCR.use_cassette("create_ordway_customer") do
        ordway_customer = Ordway::Customer.new(
          name: "Testing123",
          id: "C-1",
          description: "Some new org"
        )
        opts = { body: ordway_customer }
        result = @instance.post_customer(opts)
        expect(result.success?).to eql(true)
      end
    end
  end
end
