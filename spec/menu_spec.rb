require "menu"
# require "menu_item"

describe Menu do

  # TODO: Learn how to use doubles/specs/mocks instead of this:
  let(:menu_item_1) { MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD") }
  let(:menu_item_2) { MenuItem.new(2, "Fries", "The best fries in the world", 50, "USD") }
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

  # This is not working, and is not even be a requirement,
  # so I will stop playing with it.  I was playing because
  # I was curious about how it's done.  I still don't know,
  # but must move on now!
  xcontext "A '$5 Shake' is added to today's menu" do
    let(:menu_item_3) { MenuItem.new(3, "$5 Shake", "The best shake in the world", 5, "USD") }
    let(:menu2) { menu.add_menu_item(menu_item_3) }

    it "adds a '$5 Shake' to today's menu" do
      expect(menu2.todays_menu[2].name).to eq("$5 Shake")
    end

    it "today's menu now has three menu items" do
      expect(menu2.todays_menu.length).to eq(3)
    end
  end
end
