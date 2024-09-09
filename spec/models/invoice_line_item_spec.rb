require "spec_helper"

describe "InvoiceLineItem" do
  context "test an instance of InvoiceLineItem" do
    it "should create an instance of InvoiceLineItem" do
      invoice_line_item = Ordway::InvoiceLineItem.new
      expect(invoice_line_item).to be_instance_of(Ordway::InvoiceLineItem)
    end
  end
end
