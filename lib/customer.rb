class Customer
  attr_accessor :order

  def initialize
    @order = []
  end

  def add_to_order(nr, dish)
    (nr).times do
      self.order << (dish)
    end
  end

  def order_total
      sum = self.order.map(&:price).inject(0, &:+)
      sum
  end

end