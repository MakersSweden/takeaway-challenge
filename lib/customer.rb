class Customer
  attr_accessor :name, :phone, :my_order
  
  def initialize(args)
    self.name = args[:name]
    self.phone = args[:phone]
    self.my_order = []
  end
  
  def order_dish(restaurant, dish, qty)
    dish[:qty] = qty
    self.my_order.push dish
    #restaurant.send_notification(self)
  end
  
  def validate_total(order, restaurant)
    raise 'foo' unless get_total(order) == menu_check(restaurant, order)
  end
  
  def get_total(order)
    values = []
    order.each do |dish|
      values.push (dish[:price] * dish[:qty])
    end
    values.inject 0, :+
  end
  
  def menu_check(restaurant, order)
    values = []
    order.each do |dish|      
      restaurant.dishes.select {|r| values << (r[:price] * dish[:qty]) if r[:name] == dish[:name] }
    end
    values.inject 0, :+
  end
  
end