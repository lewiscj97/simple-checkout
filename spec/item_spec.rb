require 'item'

describe Item do
  describe "#get_price" do
    it {is_expected.to respond_to(:get_price)}
  end
end