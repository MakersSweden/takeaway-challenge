require './lib/dish.rb'
require 'twilio-ruby'

class Restaurant
  attr_accessor :dishes
  
  #Twilio API Test credentials
  TWILIO_SID = 'AC5d5a3b293f9b27dbe239b8d29dd67cae' 
  TWILIO_AUTH = '55b41363df5297ce5c3e9450ad689518' 
  
  def initialize
    self.dishes = []
  end
  
  def new_dish(name, price)
    dish = Dish.new(name: name, price: price)
    self.dishes.push dish
  end
  
  def send_notification(reciepient)
    twilio_client = Twilio::REST::Client.new TWILIO_SID, TWILIO_AUTH
    twilio_client.account.messages.create( from: '+15005550006', to: '+46723612527', body: 'Your order has been received')   
  end
  
end