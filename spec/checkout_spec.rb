require 'checkout'
require 'item'

describe Checkout do
  let(:banana) {double :banana, price: 0.50}
  let(:orange) {double :orange, price: 0.80}
  let(:chicken) {double :chicken, price: 3.50}

  describe "#scan_item" do
    it {is_expected.to respond_to(:scan_item)}
    
    it "stores the item" do
      item = Item.new(3.00)
      subject.scan_item(item)
      expect(subject.items).to include item
    end
  end

  describe "#total" do
    it {is_expected.to respond_to(:total)}

    it "returns the total of all items in £xx.xx format" do
      subject.scan_item(banana)
      subject.scan_item(orange)
      subject.scan_item(chicken)

      expect(subject.total).to eq "£4.80"
    end

    it "returns the total in correct format using real items" do
      apple = Item.new(0.80)
      juice = Item.new(1.50)

      subject.scan_item(apple)
      subject.scan_item(juice)

      expect(subject.total).to eq "£2.30"
    end
  end
end