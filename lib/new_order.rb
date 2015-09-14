
class New_order

	 

	attr_accessor :menu

	def initialize
		@menu = menu.new
		@new_order = []
	end

	def Welcome_statement 
		puts "Välkommen till Äckel och Päckel. Det här 
		är vår menu idag - vänligen välj !"
		
		
	end

	def add_to_new_order
		@dish = gets.chomp

		#bör i nästa steg fråga om kunden vill lägga 
		#ytterligare en order och om inte, sätta samman 
		#den totala ordern 

	end

	

end