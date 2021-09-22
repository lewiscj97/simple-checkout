class Item
  def initialize(price)
    @price = price
  end

  def get_price
    "£#{@price}"
  end
end