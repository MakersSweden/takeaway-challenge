class Restaurant
  attr_accessor :menu

  def initialize
    @menu = {nr1: Item.new("1"), nr2: Item.new("2"), nr3: Item.new("3")}
  end

end

