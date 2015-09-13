require './lib/customer.rb'

describe Customer do
  
  subject { Customer.new(name: 'Thomas', phone: '+46723612527') }
  let(:menu) {double(:menu, dishes: [{name: 'Hamburgare', price: 50 } , {name: 'Pizza', price: 45 }]) }
  let(:restaurant) {double(:restaurant)}
  
  before do 
    allow(restaurant).to receive(:send_notification)
    dish = menu.dishes[0]
    subject.order_dish(restaurant, dish, 1)
  end
  
  it 'has a name' do
    expect(subject.name).to eq 'Thomas'
  end
  
  it 'has a phone number' do
    expect(subject.phone).to eq '+46723612527'
  end
  
  it 'should have a list for storing orders' do
    expect(subject.my_order).to be_kind_of Array 
  end
  
  it '#order_dish should add dish to order' do
    expect(subject.my_order).to match [{name: 'Hamburgare', price: 50, qty: 1 } ]
  end
  
  it '#get_total calculates a total for all items' do
    dish = menu.dishes[1]
    subject.order_dish(restaurant, dish, 2) 
    expect(subject.get_total).to eq 140   
  end
  
  it 'validate total' do
    allow(restaurant).to receive(:dishes) 
    dish = menu.dishes[1]
    subject.order_dish(menu, dish, 2) 
    result = subject.validate_total(subject.my_order, menu)
    expect(result).to eq true
  end
  
  it 'raises error if validate total returns false' do
    menu.dishes[0][:price] = 20
    byebug
    expect{subject.validate_total(subject.my_order, menu)}.to raise_error 'foo'
  end
  
end