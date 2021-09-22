require 'item'

describe Item do
  describe "#get_price" do
    it "returns the price of the item in £xx.xx format" do
      item = Item.new(0.35)
      expect(item.get_price).to eq "£0.35"
    end
  end
end