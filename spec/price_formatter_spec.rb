# frozen_string_literal: true

require 'price_formatter'

describe PriceFormatter do
  it 'takes a float and returns a string in £xx.xx format' do
    value = 3.70
    expect(PriceFormatter.process(value)).to eq '£3.70'
  end
end
