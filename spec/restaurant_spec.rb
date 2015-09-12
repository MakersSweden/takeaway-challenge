require 'restaurant'

describe Restaurant do
  
  subject { Restaurant.new }
  
  it 'has a list of dishes' do
    expect(subject.dishes).to be_kind_of Array
  end
  
  it 'adds a dish to list of dishes' do
    subject.new_dish('Tomatsoppa', 15)
    expect(subject.dishes[0]).to be_kind_of Dish
    expect(subject.dishes[0]).to have_attributes(name: 'Tomatsoppa', price: 15)
  end
  
  
  
end