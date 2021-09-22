require_relative 'price_formatter'

class Checkout
  def initialize
    @items = []
  end

  attr_reader :items

  def scan_item(item)
    @items << item
  end

  def total
    total = 0
    @items.each {|item| total += item.price}
    PriceFormatter.format(total)
  end
end