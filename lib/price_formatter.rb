# frozen_string_literal: true

# Module to format prices in the correct £xx.xx format
module PriceFormatter
  def self.process(value)
    format('£%0.2f', value)
  end
end
