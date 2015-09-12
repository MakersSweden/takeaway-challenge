require "menu_item"

describe MenuItem do
  # I have spent some hours trying to figure out the best way,
  # actually ANY WAY, to double/mock/stub properly in RSpec.
  # I need help.  I need a good example to follow, please. Thks!
  # In the meantime, I will press on by using "let" to make new
  # instances of classes, as shown below:
  let(:menu_item) { MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD") }

  it "is a kind of MenuItem" do
    expect(menu_item).to be_a_kind_of(MenuItem)
  end

  it "is item number '1'" do
    expect(menu_item.item_number).to eq(1)
  end

  it "is a 'Burger'" do
    expect(menu_item.name).to eq("Burger")
  end

  it "is 'The best burger in the world'" do
    expect(menu_item.desc).to eq("The best burger in the world")
  end

  it "costs '100'" do
    expect(menu_item.unit_price).to eq(100)
  end

  it "is priced in 'USD'" do
    expect(menu_item.currency).to eq("USD")
  end
end