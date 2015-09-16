# require './lib/restaurant.rb'
# require './lib/order_confirmation'

# class Customer
#   attr_accessor :order

#   def initialize
#     @order = []
#   end

#   def add_to_order(qty, dish)
#     (qty).times do
#       self.order << (dish)
#     end
#   end

#   # def order_tot
#   #     sum = self.order.map(&:price).inject(0, &:+)
#   #     sum
#   # end

#   def order_total
#     total = 0
#     sum = @order.each do |item|
#       total = total + item[:price]
#     end
#     total
#   end

#   def price_check(restaurant)
#     order_sum = []
#     self.order.select {|r| price_check << r[:price] && r[:name]}
#     price_check = []
#     (restaurant).menu.select {|r| price_check << r[:price] if r[:name] == "Fried rice"}
#     price_check
#   end


# #Sparar priset på ’Pizza’ i arrayen ’price_check’

#   def place_order
#     sum = self.order.map(&:price).inject(0, &:+)
#     sum
#   end

# end