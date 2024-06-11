require "spec_helper"

describe "CustomersApi" do
  before do
    # run before each test
    client = Ordway::ApiClient.new(@global_config)
    @instance = Ordway::CustomersApi.new(client)
  end

  context "test an instance of CustomersApi" do
    it "should create an instance of CustomersApi" do
      expect(@instance).to be_instance_of(Ordway::CustomersApi)
    end
  end

  # Get Customer
  context "get test" do
    it "should work" do
      VCR.use_cassette("get_ordway_customer") do
        result = @instance.get("C-1")
        expect(result.success?).to eql(true)
      end
    end
  end

  # Create Customer
  context "create test" do
    it "should work" do
      VCR.use_cassette("create_ordway_customer") do
        customer = Ordway::Customer.new(
          name: "Testing123",
          id: "C-1",
          description: "Some new org"
        )
        result = @instance.create({ body: customer })
        expect(result.success?).to eql(true)
      end
    end
  end

  # Update Customer
  context "update test" do
    it "should work" do
      VCR.use_cassette("update_ordway_customer") do
        customer = Ordway::Customer.new(
          name: "Testing123",
          id: "C-1",
          description: "Some updated description"
        )
        result = @instance.update("C-1", { body: customer })
        expect(result.success?).to eql(true)
      end
    end
  end
end
