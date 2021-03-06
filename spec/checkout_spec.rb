# frozen_string_literal: true

require 'checkout'
require 'item'

describe Checkout do
  let(:banana) { double :banana, price: 0.50 }
  let(:orange) { double :orange, price: 0.80 }
  let(:chicken) { double :chicken, price: 3.50 }

  describe '#scan_item' do
    it { is_expected.to respond_to(:scan_item) }

    it 'stores the item' do
      item = Item.new(3.00)
      subject.scan_item(item)
      expect(subject.items).to include item
    end
  end

  describe '#total' do
    it { is_expected.to respond_to(:total) }

    it 'returns the total of all items in £xx.xx format' do
      subject.scan_item(banana)
      subject.scan_item(orange)
      subject.scan_item(chicken)

      expect(subject.total).to eq 'Total: £4.80'
    end
  end
end

describe 'functional test' do
  it 'returns the total in correct format using real items' do
    checkout = Checkout.new

    apple = Item.new(0.80)
    juice = Item.new(1.50)

    checkout.scan_item(apple)
    checkout.scan_item(juice)

    expect(checkout.total).to eq 'Total: £2.30'
  end
end
