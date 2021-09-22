class Checkout
  def initialize
    @items = []
  end

  attr_reader :items

  def scan_item(item)
    @items << item
  end
end