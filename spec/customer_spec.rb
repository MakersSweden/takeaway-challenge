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

  it 'can add a dish to order sheet' do
    subject.add_to_order(1, restaurant.menu[:nr1])
    expect(subject.order).not_to be_empty
  end

    it 'can add a dish in higher quantities than 1 in order sheet' do
    subject.add_to_order(2, restaurant.menu[:nr1])
    expect(subject.order[1]).not_to be_nil
  end

    it 'dish in order sheet has a name' do
    subject.add_to_order(1, restaurant.menu[:nr1])
    expect(subject.order[0].name).to eq "Fried rice"
  end

    it 'dish in order sheet has a a price' do
    subject.add_to_order(1, restaurant.menu[:nr1])
    expect(subject.order[0].price).to eq 65
  end

    it 'can calculate the total' do
    subject.add_to_order(2, restaurant.menu[:nr1])
    expect(subject.order_total).to eq 130
  end

end