require 'dish'
require 'twilio-ruby'

class Restaurant
  attr_accessor :dishes, :twilio_client
  
  ACCOUNT_SID = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  AUTH_TOKEN = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'
  
  def initialize
    self.dishes = []
    self.twilio_client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
  end
  
  def new_dish(name, price)
    dish = Dish.new(name: name, price: price)
    self.dishes.push dish
  end
  
  def send_notification(reciepient)
    self.twilio_client.messages.create(
      from: '+46723612527',
      to: reciepient.phone,
      body: 'Your order has been received'
    )   
  end
  
  
end