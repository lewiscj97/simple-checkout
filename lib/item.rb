class Item
  def initialize(price)
    @price = price
  end

  attr_reader :price

  def get_price
    PriceFormatter.format(price)
  end
end