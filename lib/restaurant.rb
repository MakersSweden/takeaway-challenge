require './lib/customer.rb'

class Restaurant
  attr_accessor :menu

  def initialize
    @menu = [{name: "Fried rice", price: 65}, {name: "Fried noodles", price: 75}, {name: "Curry stew", price: 90}, {name: "Tandoori chicken", price: 95}, {name: "Chikken tikka", price: 70}]
  end

end

