require "menu_item"
require "menu"
require "order_item"

describe OrderItem do

  # TODO: Learn how to use doubles/specs/mocks instead of this:
  let(:menu_item_1) { MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD") }
  let(:menu_item_2) { MenuItem.new(2, "Fries", "The best fries in the world", 50, "USD") }
  let(:menu) { Menu.new([menu_item_1, menu_item_2]) }
  let(:order_item_1) { OrderItem.new(menu, 0, 1) }
  let(:order_item_2) { OrderItem.new(menu, 1, 2) }

  it "is a kind of OrderItem" do
    expect(order_item_1).to be_a_kind_of(OrderItem)
  end

  it "the first item ordered is a 'Burger'" do
    expect(order_item_1.name).to eq("Burger")
  end

  it "the Burger costs '100'" do
    expect(order_item_1.unit_price).to eq(100)
  end

  it "the number of Burgers ordered is '1'" do
    expect(order_item_1.quantity).to eq(1)
  end

    it "the second item ordered is an order of 'Fries'" do
    expect(order_item_2.name).to eq("Fries")
  end

  it "the Fries cost '100'" do
    expect(order_item_2.unit_price).to eq(50)
  end

  it "the number of orders of Fries ordered is '2'" do
    expect(order_item_2.quantity).to eq(2)
  end
end
