require_relative "menu_item"
require_relative "menu"
require_relative "order_item"

class Cart
  attr_accessor :cart
  attr_accessor :total_cost

  def initialize
    @cart = []
    @total_cost = 0
  end

  @@instance = Cart.new

  def self.instance
    return @@instance
  end

  def add_item_to_cart(order_item)
    @cart.push(order_item)
    cost = order_item.cost.to_i
    @total_cost += cost
  end

  def to_s
    puts "You ordered:"
    cart.each do |order_item|
      puts "#{order_item.name}: #{order_item.quantity} x #{order_item.unit_price} #{order_item.currency} = #{order_item.cost} #{order_item.currency}"
    end
    puts "GRAND TOTAL: #{@total_cost}"
  end

  private_class_method :new
end

# The following was written so I could try out something from
# https://www.ruby-lang.org/en/documentation/quickstart/
# which Thomas had us go through on Thursday. What it does
# "__FILE__ is the magic variable that contains the name of
# the current file. $0 is the name of the file used to start
# the program. This check says “If this is the main file
# being used…” This allows a file to be used as a library,
# and not to execute code in that context, but if the file is
# being used as an executable, then execute that code.""
if __FILE__ == $0
  menu_item_1 = MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD")
  menu_item_2 = MenuItem.new(2, "Fries", "The best fries in the world", 50, "USD")
  menu = Menu.new([menu_item_1, menu_item_2])
  order_item_1 = OrderItem.new(menu, 0, 1)
  order_item_2 = OrderItem.new(menu, 1, 2)
  Cart.instance.add_item_to_cart(order_item_1)
  Cart.instance.add_item_to_cart(order_item_2)
  Cart.instance.to_s
end
