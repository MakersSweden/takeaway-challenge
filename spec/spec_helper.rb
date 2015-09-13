require 'coveralls'
Coveralls.wear!
require 'capybara/rspec'
require 'byebug'
require 'twilio-ruby'
require 'sms_spec'


SmsSpec.driver = :"twilio-ruby"
