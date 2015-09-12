class Customer
  attr_accessor :order

  def initialize
    @order = []
  end

  def add_to_order(dish)
    self.order << (dish)
  end

end