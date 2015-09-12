require './lib/restaurant.rb'

class Customer
  attr_accessor :order

  def initialize
    @order = []
  end

  def add_to_order(qty, dish)
    (qty).times do
      self.order << (dish)
    end
  end

  # def order_tot
  #     sum = self.order.map(&:price).inject(0, &:+)
  #     sum
  # end

  def order_total
    total = 0
    sum = @order.each do |item|
      total = total + item[:price]
    end
    total
  end

  def place_order
    sum = self.order.map(&:price).inject(0, &:+)
    sum
  end

end