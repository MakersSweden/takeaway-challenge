require 'rubygems'
require 'twilio-ruby'

module OrderConfirmation

  attr_accessor :account_sid, :auth_token, :client

  def initialize
    @account_sid = "ACddec987a4ee673735a04ed771cba040d"
    @auth_token = "751238d4d2f48e26332bfbcdd1e84aee"
    @client = Twilio::REST::Client.new @account_sid, @auth_token
  end

  def structure_message
    {
      :from => "+14695027840",
      :to => "+46704921341",
      :body => "Thank you! You have ordered: #{@order}. Your order will be delivered at: #{delivery_time}"
    }
  end

  def send_message
    client.account.messages.create(
      structure_message
    )
    puts "Sent order confirmation via SMS."
  end

  def delivery_time
    Time.now + 3600
  end

end