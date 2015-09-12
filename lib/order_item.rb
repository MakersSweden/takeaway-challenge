class OrderItem
  attr_accessor :menu_item
  attr_accessor :name
  attr_accessor :unit_price
  attr_accessor :quantity

  def initialize(menu, item_number, quantity)
    @menu_item = menu.todays_menu[item_number]
    @name = menu_item.name
    @unit_price = menu_item.unit_price
    @quantity = quantity
  end
end
