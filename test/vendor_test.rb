require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/vendor'
require './lib/item'

class VendorTest < Minitest::Test
  
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_it_exsist_and_has_attributes

    expected = {}
    assert_instance_of Vendor, @vendor
    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal expected, @vendor.inventory
  end
end