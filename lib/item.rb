class Item
  attr_accessor :name, :price

  def initialize(kind)
    case kind
    when "1"
      @name = "Fried rice"
      @price = 65
    when "2"
      @name = "Fried noodles"
      @price = 75
    when "3"
      @name = "Curry stew"
      @price = 90
    end
  end

end