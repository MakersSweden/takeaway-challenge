require 'menu'

describe 'Menu' do

	subject { Menu.new } 

	it 'holds a list of dishes with prices' do
	expect(subject.menu).to include({"Nageltrång" => 23.50})

	end

end
