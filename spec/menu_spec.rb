require 'menu'

class MenuUser; include Menu; end

describe 'menu' do

let(:subject) {MenuUser.new}
let(:menu) {menu.menu}

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

end