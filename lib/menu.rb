class Menu
  attr_accessor :todays_menu

  def initialize(menu_items)
    @menu_items = menu_items
    @todays_menu = [] # FIXME: Hash? Load from file!

    # This conditional is probably not needed, but it
    # doesn't do harm (actually, it might) and it serves as a
    # reminder to me that this kind of checking is possible
    # and is sometimes desirable. I got my inspiration from:
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

  # Not yet sure if needed, but it seemed like a good
  # opportunity for me to write my first-ever to_s method
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
    puts "What would you like to order?"
  end

  # Works in IRB, but I can't get the unit tests to work.
  # More importantly, this is not a requirement, so I am
  # abbandoning this (and should not have even started it).
  # That said, it could be a good way to build up a menu
  # from a file or database or user interface.
  def add_menu_item(menu_item_to_add)
    @todays_menu.push(menu_item_to_add)
  end

  # Not a requirement, so abbandoning.
  def remove_menu_item(menu_item_to_remove)
  end
end
