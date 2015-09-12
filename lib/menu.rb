class Menu
  attr_accessor :todays_menu

  def initialize(menu_items)
    @menu_items = menu_items
    @todays_menu = []

    # This conditional is probably not needed, but it
    # doesn't do harm (I hope) and it serves as a reminder
    # to me that this kind of checking is possible and
    # is sometimes desirable. I got my inspiration from:
    # https://www.ruby-lang.org/en/documentation/quickstart/3/
    if @menu_items.nil?
      # Do something, such as raise an error
    elsif @menu_items.respond_to?("each")
      @menu_items.each do |menu_item|
        @todays_menu.push(menu_item)
      end
    else
      @todays_menu.push(menu_items)
    end
  end

  def to_s
    if @todays_menu.length == 0
      puts "We have no menu items today."
    elsif @todays_menu.length >= 2
      puts "We have the following items today:"
      @todays_menu.each do |menu_item|
        puts "#{menu_item.name}"
      end
    else
      puts "We only have #{@todays_menu} today."
    end
  end

  def add_menu_item(menu_item_to_add)
    @todays_menu.push(menu_item_to_add)
  end

  def remove_menu_item(menu_item_to_remove)
    # Not sure if will need this method, so just stubbing out.
    # If need, might change @todays_menu to be hash vs. array.
  end
end
