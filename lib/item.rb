class Item
  def initialize(price)
    @price = price
  end

  attr_reader :price

  def get_price
    "£%0.2f" % @price
  end
end