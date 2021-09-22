require 'item'

describe Item do
  describe "#get_price" do
    it "returns the price of the item" do
      item = Item.new(0.35)
      expect(item.get_price).to eq "£0.35"
    end

    it "returns the price in £xx.xx format" do
      item = Item.new(1.00)
      expect(item.get_price).to rq "£1.00"
    end
  end
end