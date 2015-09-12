require 'restaurant'
require 'twilio-ruby'

describe Restaurant do
  
  subject { Restaurant.new }
  let(:customer) {double(:customer, phone: '+46723252761')}
  
  it 'has a list of dishes' do
    expect(subject.dishes).to be_kind_of Array
  end
  
  it 'has a twilio_client set up' do
    expect(subject.twilio_client).to be_kind_of Twilio::REST::Client
  end
  
  it 'adds a dish to list of dishes' do
    subject.new_dish('Tomatsoppa', 15)
    expect(subject.dishes[0]).to be_kind_of Dish
    expect(subject.dishes[0]).to have_attributes(name: 'Tomatsoppa', price: 15)
  end
  
  it '#send_notification responds with a standard message' do
    expect(subject.send_notification(customer)).to eq 'Your order has been received'
  end
  
end