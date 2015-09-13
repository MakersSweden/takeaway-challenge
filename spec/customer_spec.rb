require 'customer'


describe 'Customer' do 

	subject(Customer.new)

	it 'shows a menu to a new customer' do
		expect(customer.menu).to eq @menu
	end
	
end
