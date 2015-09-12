require './lib/customer.rb'

describe Customer do
  
  subject { Customer.new }
  let(:menu) {double(:menu, dishes: [  {name: 'Hamburgare', price: 50 } ]) }
  
  it 'should have a list for storing orders' do
    expect(subject.my_order).to be_kind_of Array 
  end
  
  it '#add_dish should add dish to order' do
    #byebug
    dish = menu.dishes[0]
    subject.add_dish(dish, 1)
    expect(subject.my_order).to match [{name: 'Hamburgare', price: 50, qty: 1 } ]
  end
  
end