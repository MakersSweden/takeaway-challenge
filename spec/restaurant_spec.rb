require 'restaurant'
require 'item'

describe 'restaurant' do

  subject {Restaurant.new}

  it 'creates a restaurant' do
    expect(subject).to be_kind_of Restaurant
  end

    it 'creates a menu' do
    expect(subject.menu).to be_kind_of Hash
  end

    it 'menu contains dishes when created' do
    expect(subject.menu[:nr1]).to be_kind_of Item
  end

   it 'dishes has a name' do
    expect(subject.menu[:nr1].name).to eq "Fried rice"
  end

     it 'dishes has a price' do
    expect(subject.menu[:nr1].price).to eq 65
  end


end