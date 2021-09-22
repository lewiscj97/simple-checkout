class Item
  def initialize(price)
    @price = price
  end

  def get_price
    "£%0.2f" % @price
  end
end