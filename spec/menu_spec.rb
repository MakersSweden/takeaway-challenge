require 'menu'
#require 'byebug'

	describe Menu do

			subject{ Menu.new } 
		
		it "is a hash" do 
			expect(subject.menu).to be_kind_of Hash  
		end


		it 'holds a specific dish with a price' do
		expect(subject.menu).to include 'Nageltrång' => 23.50
		end


		it 'gets a new menu with correct items and prices' do
		expect(subject.menu).to include "Nageltrång" => 23.50
		end
	
	end

