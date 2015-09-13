require 'menu'
#require 'byebug'

	describe Menu do

			subject{ Menu.new } 
		

		it "is a hash" do 
			expect(subject).to be_kind_of Hash  
		end


		it 'holds a specific dish with a corresponding price' do
		expect(subject).to include :Nageltrång => 23.50
		end
	
	end

