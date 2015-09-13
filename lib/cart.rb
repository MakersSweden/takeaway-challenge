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
