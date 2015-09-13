require './lib/new_order'

	describe 'new_order' do 

		subject{ Menu.new }

		it 'shows the menu to customer' do
			expect(subject.menu).to eq menu
		end
	end


end
