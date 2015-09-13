require 'restaurant'
require 'twilio-ruby'

describe Restaurant do
  
  subject { Restaurant.new }
  let(:customer) {double(:customer, phone: '+46723612527')}
  
  it 'has a list of dishes' do
    expect(subject.dishes).to be_kind_of Array
  end
  
  it 'adds a dish to list of dishes' do
    subject.new_dish('Tomatsoppa', 15)
    expect(subject.dishes[0]).to be_kind_of Dish
    expect(subject.dishes[0]).to have_attributes(name: 'Tomatsoppa', price: 15)
  end
  
  xit '#send_notification responds with a standard message' do
    #byebug
    subject.send_notification(customer)
    open_last_text_message_for customer.phone
    expect(current_text_message).to have_body 'Your order has been received'
  end
  
end