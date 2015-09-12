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
    restaurant.send_notification(self)
  end
  
  def get_total
    values = []
    self.my_order.each do |dish|
      values.push (dish[:price] * dish[:qty])
    end
    values.inject 0, :+
  end
  
end