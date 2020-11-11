require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/vendor'
require './lib/item'

class VendorTest < Minitest::Test
  
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  def test_it_exsist_and_has_attributes

    expected = {}
    assert_instance_of Vendor, @vendor
    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal expected, @vendor.inventory
  end

  def test_check_stock

    assert_equal 0, @vendor.check_stock(@item1)
  end
end