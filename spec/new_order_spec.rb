require 'new_order'
require 'menu'

	describe New_order do 

		subject { New_order.new }

		it 'shows the menu to customer' do
			expect(subject.menu).to be_kind_of Menu
		end
	end


