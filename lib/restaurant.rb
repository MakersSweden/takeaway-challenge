require './lib/customer.rb'
require_relative 'order_confirmation'

class Restaurant
  include OrderConfirmation

  attr_accessor :menu

  def initialize
    super
    @menu = [{name: "Fried rice", price: 65}, {name: "Fried noodles", price: 75}, {name: "Curry stew", price: 90}, {name: "Tandoori chicken", price: 95}, {name: "Chikken tikka", price: 70}]
  end

end

