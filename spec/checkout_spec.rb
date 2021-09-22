require 'checkout'
require 'item'

describe Checkout do
  describe "#scan_item" do
    it {is_expected.to respond_to(:scan_item)}
    
    it "stores the item" do
      item = Item.new(3.00)
      subject.scan_item(item)
      expect(subject.items).to include item
    end
  end
end