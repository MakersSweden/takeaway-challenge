require 'customer'

describe 'restaurant' do

  subject {Restaurant.new}

  it 'creates a restaurant' do
    expect(subject).to be_kind_of Restaurant
  end

    it 'creates a menu' do
    expect(subject.menu).to be_kind_of Array
  end

    it 'menu contains dishes when created' do
    expect(subject.menu[0]).to be_kind_of Hash
  end

   it 'dishes has a name' do
    expect(subject.menu[0][:name]).to eq "Fried rice"
  end

     it 'dishes has a price' do
    expect(subject.menu[0][:price]).to eq 65
  end

end
