require "spec_helper"

describe "ContactsApi" do
  context "test an instance of ContactsApi" do
    it "should create an instance of ContactsApi" do
      client = Ordway::ApiClient.new(@global_config)
      expect(Ordway::ContactsApi.new(client)).to be_instance_of(Ordway::ContactsApi)
    end
  end

  # Create Contact
  context "create test" do
    it "should work" do
      response = Ordway::Contact.new(
        id: "124",
        display_name: "abc"
      )
      new_resource = double
      allow(Ordway::ContactsApi).to receive(:new).and_return(new_resource)
      allow(new_resource).to receive(:create).and_return(Ordway::Response.new(true, response))

      contact = Ordway::Contact.new(display_name: "Testing123")
      result = Ordway::ContactsApi.new.create({ body: contact })
      expect(result.success?).to eql(true)
    end
  end

  # Update Customer
  context "update test" do
    it "should work" do
      response = Ordway::Contact.new(
        id: "124",
        display_name: "abc"
      )
      new_resource = double
      allow(Ordway::ContactsApi).to receive(:new).and_return(new_resource)
      allow(new_resource).to receive(:update).and_return(Ordway::Response.new(true, response))

      contact = Ordway::Contact.new(display_name: "Testing123")

      result = Ordway::ContactsApi.new.update("CT-90", { body: contact })
      expect(result.success?).to eql(true)
    end
  end
end
