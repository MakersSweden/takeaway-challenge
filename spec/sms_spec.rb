require "customer"
require "sms"

describe Sms do

  let(:customer) { Customer.new(1, "Chris", "+46738073188") }
  let(:sms) { Sms.new(customer) }

  it "is a kind of Sms" do
    expect(sms).to be_a_kind_of(Sms)
  end

  it "the SMS will be sent to 'Chris'" do
    expect(sms.customer.cust_name).to eq("Chris")
  end

  it "the SMS will be sent to '+46738073188'" do
    expect(sms.customer.cust_phone).to eq("+46738073188")
  end

  it "the SMS message will include 'Thank you! Your order was placed and will be delivered before'" do
    expect(sms.message.include? "Thank you! Your order was placed and will be delivered before").to eq(true)
  end
end
