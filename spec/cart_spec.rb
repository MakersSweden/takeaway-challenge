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

  context "a 'Burger' is added to the cart" do
    before do
      Cart.instance.add_item_to_cart(order_item_1) # Comment from Thomas: "Why use Cart.instance vs storing that instance in a variable?"
    end
    it "adds a 'Burger' to the cart" do
      # See FOOTNOTE 1
      expect(Cart.instance.cart[0].name).to eq("Burger")
    end
  end

    context "an order of 'Fries' is added to the cart" do
    before do
      Cart.instance.add_item_to_cart(order_item_2)
    end
    it "adds an order of 'Fries' to the cart" do
      expect(Cart.instance.cart[1].name).to eq("Fries")
    end
  end
end

# FOOTNOTE 1

# The following is what RSpec barfed out
# when my expect statement was this:
# expect(Cart.instance.cart[0].name).to equal("Burger")
# instead of what it is now, which is this:
# expect(Cart.instance.cart[0].name).to eq("Burger")

# Failures:

#   1) Cart a 'Burger' is added to the cart adds a 'Burger' to the cart
#      Failure/Error: expect(Cart.instance.cart[0].name).to equal("Burger")

#        expected #<String:70238977867780> => "Burger"
#             got #<String:70238977868160> => "Burger"

#        Compared using equal?, which compares object identity,
#        but expected and actual are not the same object. Use
#        `expect(actual).to eq(expected)` if you don't care about
#        object identity in this example.
#      # ./spec/cart_spec.rb:22:in `block (3 levels) in <top (required)>'