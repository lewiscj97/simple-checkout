# frozen_string_literal: true

require_relative 'price_formatter'
require_relative 'item'

# Class for a simple checkout
class Checkout
  def initialize
    @items = []
  end

  attr_reader :items

  def scan_item(item)
    @items << item
  end

  def total
    "Total: #{PriceFormatter.process(calculate_total)}"
  end

  def calculate_total
    total = 0
    @items.each { |item| total += item.price }
    total
  end
end
