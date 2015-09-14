require 'menu'
#require 'byebug'

	describe Menu do

			subject{ Menu.new } 
		
		it "creates a new menu" do 
			expect(subject.menu).to be_kind_of Menu  
		end

		it "is a hash" do 
			expect(subject.menu).to be_kind_of Hash  
		end


		it 'holds a specific dish with a corresponding price' do
		expect(subject.menu).to include 'Nageltrång' => 23.50
		end
	
	end

