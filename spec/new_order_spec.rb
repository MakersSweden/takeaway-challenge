require './lib/new_order'

	describe 'new_order' do 

		

		it 'shows the menu to customer' do
			expect(subject.menu).to eq menu
		end
	end


