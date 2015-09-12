class Menu
  attr_accessor :todays_menu

  def initialize(menu_items)
    @menu_items = menu_items
    @todays_menu = []

    # Inspired by https://www.ruby-lang.org/en/documentation/quickstart/3/
    if @menu_items.nil?
      puts "We have no menu items today."
    elsif @menu_items.respond_to?("each")
      @menu_items.each do |menu_item|
        @todays_menu.push(menu_item)
        puts "#{menu_item.name}"
      end
    else
      @todays_menu.push(menu_items)
      puts "You can get anything you want as long as it is a #{@menu_items}!"
    end
  end

  def to_s
    if @todays_menu.nil?
      puts "We have no menu items today."
    elsif @todays_menu.respond_to?("each")
      puts "We have the following items today:"
      @todays_menu.each do |menu_item|
        puts "#{menu_item.name}"
      end
    else
      @todays_menu.push(todays_menu)
      puts "We only have #{@todays_menu} today."
    end
  end

end
