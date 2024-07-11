require "spec_helper"

describe "TransactionType" do
  context "test an instance of TransactionType" do
    it "should create an instance of TransactionType" do
      transaction_type = Ordway::TransactionType.new
      expect(transaction_type).to be_instance_of(Ordway::TransactionType)
    end
  end
end
