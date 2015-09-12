require 'restaurant'
require 'item'

describe 'customer' do

  subject {Customer.new}

  it 'creates a new customer' do
    expect(subject).to be_kind_of Customer
  end

    it 'has a order sheet' do
    expect(subject.order).to be_kind_of Array
  end

end


describe 'order' do

  subject {Customer.new}
  let(:restaurant) { Restaurant.new }

  it 'adds an item to order' do
    subject.add_to_order(restaurant.menu[:nr1])
    expect(subject.order).not_to be_empty
  end

    it 'order item has a name' do
    subject.add_to_order(restaurant.menu[:nr1])
    expect(subject.order[0].name).to eq "Fried rice"
  end

    it 'order item has a price' do
    subject.add_to_order(restaurant.menu[:nr1])
    expect(subject.order[0].price).to eq 65
  end


end