require "customer"

describe Customer do

  # TODO: Learn how to use doubles/specs/mocks instead of this:
  let(:customer) { Customer.new(1, "Chris", "+46738073188") }

  it "is a kind of Customer" do
    expect(customer).to be_a_kind_of(Customer)
  end

  it "the customer's ID number is '1'" do
    expect(customer.cust_id).to eq(1)
  end

  it "the customer's name is 'Chris'" do
    expect(customer.cust_name).to eq("Chris")
  end

  it "the customer's phone number is '+46738073188'" do
    expect(customer.cust_phone).to eq("+46738073188")
  end
end
