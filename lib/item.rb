# frozen_string_literal: true

# General class for items that are scanned at checkout
class Item
  def initialize(price)
    @price = price
  end

  attr_reader :price

  def formatted_price
    PriceFormatter.process(price)
  end
end
