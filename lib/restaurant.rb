require './lib/item.rb'
require './lib/customer.rb'

class Restaurant
  attr_accessor :menu

  def initialize
    @menu = {nr1: Item.new("1"), nr2: Item.new("2"), nr3: Item.new("3")}
  end

  def order(dish)
    order = []
    order << (dish)
  end

  def add_to_order(dish)
    order = []
    order << (dish)
  end

end

