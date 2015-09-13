require_relative "menu_item"
require_relative "menu"
require_relative "order_item"

class Cart
  def initialize
    @cart = File.open("../cart.txt", "a")
  end

  @@instance = Cart.new

  def self.instance
    return @@instance
  end

  def load_item(order_item)
    @cart.puts(order_item)
  end

  private_class_method :new
end

if __FILE__ == $0
  menu_item_1 = MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD")

  menu_item_2 = MenuItem.new(2, "Fries", "The best fries in the world", 50, "USD")

  menu = Menu.new([menu_item_1, menu_item_2])

  order_item_1 = OrderItem.new(menu, 0, 1)
  order_item_2 = OrderItem.new(menu, 1, 2)

  Cart.instance.load_item(order_item_1)
  Cart.instance.load_item(order_item_2)
end
