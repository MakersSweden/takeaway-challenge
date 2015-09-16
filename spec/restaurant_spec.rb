require 'restaurant'

describe 'restaurant' do

  subject {Restaurant.new}

  it 'creates a restaurant' do
    expect(subject).to be_kind_of Restaurant
  end

  it 'has a menu' do
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

  it 'has an empty order-sheet when created' do
    expect(subject.order).to be_kind_of Array
  end

end

describe 'order-registration' do

  subject {Restaurant.new}

  it 'can add a dish to the order-sheet' do
    allow(subject).to receive(:user_input).and_return 1
    allow(subject).to receive(:add_more?).and_return "no"
    subject.add_to_order
    expect(subject.order[0][:name]).to eq "Fried noodles"
  end

  it 'can add a dish in multiple qty to the order-sheet' do
    allow(subject).to receive(:user_input).and_return 2
    allow(subject).to receive(:add_more?).and_return "no"
    subject.add_to_order
    expect(subject.order[1][:name]).to eq "Curry stew"
  end

  it 'cant add a dish to the order-sheet if its not on the menu' do
    expect(subject.verify_input_dish(5)).to eq false
  end

  it 'cant add dishes to the order-sheet in higher amounts than 10' do
    expect(subject.verify_input_qty(20)).to eq false
  end

  it 'can calculate the order-sheet total' do
    allow(subject).to receive(:user_input).and_return 1
    allow(subject).to receive(:add_more?).and_return "no"
    subject.add_to_order
    expect(subject.order_total).to eq 75
  end

  it 'can place the order' do
    allow(subject).to receive(:user_input).and_return 1
    allow(subject).to receive(:add_more?).and_return "no"
    allow(subject).to receive(:send_message).and_return "Order sent"
    subject.add_to_order
    expect(subject.order_overview).to eq "Order sent"
  end



end
