require './lib/menu.rb'


class New_Order

	attr_accessor  :filled 

	def initialize
		@show_menu = menu.new
		@customer_choice = Order.new
		@new_order = []
	end

	def show_menu 
		puts "Välkommen till Äckel och Päckel. Det här 
		är vår menu idag - vänligen välj !"
		puts menu.new
		
	end

	def add_to_new_order
		new_order.dish = gets.chomp

		#bör fråga om kunden vill lägga ytterligare en 
		#och om inte, sätta samman ordern 

	end

	

end