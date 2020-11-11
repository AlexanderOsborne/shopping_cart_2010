class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name    = name  
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.select do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def sorted_item_list
    list = []
    @vendors.each do |vendor|
      vendor.inventory.each do |inventory, quantity|
      list << inventory.name
        end
      end
    list.sort.uniq
  end
end