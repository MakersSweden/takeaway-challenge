class Dish
  attr_accessor :name, :price
  
  def initialize(args)
    self.name = args[:name]
    self.price = args[:price]
  end
  
end