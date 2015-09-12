class Customer
  attr_accessor :my_order
  
  def initialize
    self.my_order = []
  end
  
  def add_dish(dish, qty)
    dish[:qty] = qty
    self.my_order.push dish
  end
  
  def get_total
    values = []
    self.my_order.each do |dish|
      values.push (dish[:price] * dish[:qty])
    end
    values.inject 0, :+
  end
  
end