class Customer
  attr_accessor :my_order
  
  def initialize
    self.my_order = []
  end
  
  def add_dish(dish, qty)
    dish[:qty] = qty
    self.my_order.push dish
  end
  
  
  
end