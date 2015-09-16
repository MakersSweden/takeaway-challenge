require './lib/customer.rb'
require './lib/order_confirmation'

class Restaurant
  include OrderConfirmation


  attr_accessor :order

  def initialize
    super
    @order = []
  end


  def welcome
    puts 'Welcome to my restaurant.'
    puts 'Please order from our menu below.'
    show_menu
  end

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
    add_to_order
  end

  def user_input
    user_input = gets.chomp
  end

  def verify_input_dish(dish)
    dish >=0 && dish <= 4 ? true : false
  end

  def verify_input_qty(qty)
    qty >=0 && qty <= 10 ? true : false
  end

  def add_to_order
    puts "Choose dish nr from menu above"
    dish = user_input.to_i
    if verify_input_dish(dish)
      puts "Choose qty for your dish"
      qty = user_input.to_i
        if verify_input_qty(qty)
          (qty).times do
          self.order << menu[(dish)]
          end
        else
          puts "Sorry, wrong input, choose again."
          add_to_order
        end
    else
      puts "Sorry, wrong input, choose again."
      add_to_order
    end
    add_more?
  end

  def add_more?
    puts "Would you like to add anything else to your order yes/no?"
    status = user_input
      if status == "yes"
        show_menu
      elsif status == "no"
        order_overview
      else
        puts "Sorry, wrong input, choose again."
        add_more?
      end
  end

  def order_overview
    puts "You have ordered:"
    order.each do |item, index|
      puts "#{index} #{item[:name]} #{item[:price]} kr"
    end
    puts "And your total is:" + order_total.to_s
    puts "Thank you and welcome back!"
    send_message
  end

  def order_total
    total = 0
    sum = @order.each do |item|
      total = total + item[:price]
    end
    total
  end

end

