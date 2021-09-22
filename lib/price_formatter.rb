module PriceFormatter
  def self.format(float)
    "£%0.2f" % float
  end
end