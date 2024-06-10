require "spec_helper"

describe "Contact" do
  context "test an instance of Contact" do
    it "should create an instance of Contact" do
      contact = Ordway::Contact.new
      expect(contact).to be_instance_of(Ordway::Contact)
    end
  end
end
