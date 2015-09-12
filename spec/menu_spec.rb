require 'menu'

describe 'Menu' do

	subject { Menu.new } 

	it 'holds a list of dishes with prices' do
	expect(subject).to include({"Nageltrång" => 23.50})

	end

end
