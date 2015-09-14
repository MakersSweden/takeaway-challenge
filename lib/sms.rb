require_relative "customer" # Not necessary except for the block below the class

class Sms
  attr_accessor :customer
  attr_accessor :message

  def initialize(customer)
    @customer = customer
    current_time = Time.now
    deadline = current_time + 3600
    @message = "Thank you! Your order was placed and will be delivered before #{deadline.strftime("%H:%M %p")}"
  end
end

# This is not necessary, I was just playing around with it
if __FILE__ == $0
  sms = Sms.new(Customer.new(1, "Chris", "+46738073188"))
  puts "Name: #{sms.customer.cust_name}"
  puts "Phone number: #{sms.customer.cust_phone}"
  puts "SMS: #{sms.message}"
end
