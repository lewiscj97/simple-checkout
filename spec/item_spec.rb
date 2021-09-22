# frozen_string_literal: true

require 'item'

describe Item do
  describe '#formatted_price' do
    it 'returns the price of the item' do
      item = Item.new(0.35)
      expect(item.formatted_price).to eq '£0.35'
    end

    it 'returns the price in £xx.xx format' do
      item = Item.new(1.00)
      expect(item.formatted_price).to eq '£1.00'
    end
  end
end
