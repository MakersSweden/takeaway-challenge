class OrderItem
  attr_accessor :menu_item
  attr_accessor :name
  attr_accessor :unit_price
  attr_accessor :quantity
  attr_accessor :cost
  attr_accessor :currency

  def initialize(menu, item_number, quantity)
    @menu_item = menu.todays_menu[item_number]
    @name = menu_item.name
    @unit_price = menu_item.unit_price
    @currency = menu_item.currency
    @quantity = quantity
    @cost = @unit_price * quantity
  end
end
