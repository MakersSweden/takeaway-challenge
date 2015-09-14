require 'customer'
require 'menu'


describe 'Customer' do 

	subject {Menu.new }
	
	
	it 'gets a new menu with correct items and prices' do
		expect(subject.menu).to include "Nageltrång" => 23.50
	end
	
end
