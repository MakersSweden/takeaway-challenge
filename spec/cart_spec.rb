require "cart"

describe Cart do

  # TODO: Learn how to use doubles/specs/mocks instead of this:
  let(:menu_item_1) { MenuItem.new(1, "Burger", "The best burger in the world", 100, "USD") }
  let(:menu_item_2) { MenuItem.new(2, "Fries", "The best fries in the world", 50, "USD") }
  let(:menu) { Menu.new([menu_item_1, menu_item_2]) }
  let(:order_item_1) { OrderItem.new(menu, 0, 1) }
  let(:order_item_2) { OrderItem.new(menu, 1, 2) }
  let(:cart) { Cart.send(:new) } # See http://stackoverflow.com/a/23901644

  it "is a kind of Cart" do
    expect(cart).to be_a_kind_of(Cart)
  end

  xit "adds a 'Burger' to the cart" do
    expect(cart.add_item_to_cart(order_item_1)).to # FIXME: Add the Burger
  end

end