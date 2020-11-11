require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/item'
require './lib/vendor'
require './lib/market'

class MarketTest < Minitest::Test
  
  def setup
    @market = Market.new("South Pearl Street Farmers Market")
  end

  def test_it_exsist_and_has_attributes

    assert_instance_of Market, @market
    assert_equal "South Pearl Street Farmers Market", @market.name
  end
end