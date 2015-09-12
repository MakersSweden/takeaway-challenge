require "menu"
# require "menu_item"

describe Menu do
  let(:menu_item_1) { MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD") }
  let(:menu_item_2) { MenuItem.new(1, "Fries", "The best fries in the world", 50, "USD") }
  let(:menu) { Menu.new([menu_item_1, menu_item_2]) }

  it "is a kind of Menu" do
    expect(menu).to be_a_kind_of(Menu)
  end

  it "has two menu items" do
    expect(menu.todays_menu.length).to eq(2)
  end

  it "the first thing on today's menu is a Burger" do
    expect(menu.todays_menu[0].name).to eq("Burger")
  end
end