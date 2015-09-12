require 'dish'

describe Dish do
  
  subject { Dish.new(name: 'Tacos', price: 20) }
  
  it 'has a name' do
    expect(subject.name).to eq 'Tacos'
  end
  
  it 'has a price' do
    expect(subject.price).to eq 20
  end
  
end