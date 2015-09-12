require 'dish'

class Restaurant
  attr_accessor :dishes
  
  def initialize
    self.dishes = []
  end
  
  def new_dish(name, price)
    dish = Dish.new(name: name, price: price)
    self.dishes.push dish
  end
  
  def send_notification(reciepient)
    'Your order has been received'
  end
  
  
end