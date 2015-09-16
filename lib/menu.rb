module Menu

  def menu
      @menu = [{name: "Fried rice", price: 65},
              {name: "Fried noodles", price: 75},
              {name: "Curry stew", price: 90},
              {name: "Tandoori chicken", price: 95},
              {name: "Chikken tikka", price: 70}]
  end

  def show_menu
    menu.each_with_index do |item, index|
      puts "#{index} #{item[:name]} #{item[:price]} kr"
    end
  end

end