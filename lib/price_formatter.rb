# frozen_string_literal: true

# Module to format prices in the correct £xx.xx format
module PriceFormatter
  def self.process(float)
    format('£%0.2f', float)
  end
end
