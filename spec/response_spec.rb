require "spec_helper"

describe "Response" do
  context "test an instance of Response" do
    it "should create an instance of Response" do
      response = Ordway::Response.new(true)
      expect(response).to be_instance_of(Ordway::Response)
    end

    it "success" do
      response = Ordway::Response.new(true)
      expect(response.success?).to eql(true)
    end

    it "failures" do
      response = Ordway::Response.new(false)
      expect(response.failure?).to eql(true)
    end
  end
end
