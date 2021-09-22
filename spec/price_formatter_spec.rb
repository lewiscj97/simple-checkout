# frozen_string_literal: true

require 'price_formatter'

describe PriceFormatter do
  it 'takes a float and returns a string in £xx.xx format' do
    float = 3.70
    expect(PriceFormatter.process(float)).to eq '£3.70'
  end
end
