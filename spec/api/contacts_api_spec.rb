require "spec_helper"

describe "ContactsApi" do
  before do
    # run before each test
    client = Ordway::ApiClient.new(@global_config)
    @instance = Ordway::ContactsApi.new(client)
  end

  context "test an instance of ContactsApi" do
    it "should create an instance of ContactsApi" do
      expect(@instance).to be_instance_of(Ordway::ContactsApi)
    end
  end

  # Create Contact
  context "create test" do
    it "should work" do
      VCR.use_cassette("create_ordway_contact") do
        contact = Ordway::Contact.new(display_name: "Testing123")
        result = @instance.create({ body: contact })
        expect(result.success?).to eql(true)
      end
    end
  end

  # Update Customer
  context "update test" do
    it "should work" do
      VCR.use_cassette("update_ordway_contact") do
        contact = Ordway::Contact.new(display_name: "Testing123")
        result = @instance.update("CT-90", { body: contact })
        expect(result.success?).to eql(true)
      end
    end
  end
end
