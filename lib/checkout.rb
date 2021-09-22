require_relative 'price_formatter'
require_relative 'item'

class Checkout
  def initialize
    @items = []
  end

  attr_reader :items

  def scan_item(item)
    @items << item
  end

  def total
    "Total: #{PriceFormatter.format(calculate_total)}"
  end

  def calculate_total
    total = 0
    @items.each {|item| total += item.price}
    total
  end
end