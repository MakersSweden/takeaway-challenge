require './lib/customer.rb'

describe Customer do
  
  subject { Customer.new }
  let(:menu) {double(:menu, dishes: [  {name: 'Hamburgare', price: 50 } , {name: 'Pizza', price: 45 }]) }
  
  before do 
    dish = menu.dishes[0]
    subject.add_dish(dish, 1)
  end
  it 'should have a list for storing orders' do
    expect(subject.my_order).to be_kind_of Array 
  end
  
  it '#add_dish should add dish to order' do
    expect(subject.my_order).to match [{name: 'Hamburgare', price: 50, qty: 1 } ]
  end
  
  it '#get_total calculates a total for all items' do
    dish = menu.dishes[1]
    subject.add_dish(dish, 2) 
    expect(subject.get_total).to eq 140   
  end
  
end