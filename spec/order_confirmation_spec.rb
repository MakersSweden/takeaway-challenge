require 'order_confirmation'
require 'restaurant'

class NeedsConfirmation; include OrderConfirmation; end

describe 'order confirmation' do

  subject {NeedsConfirmation.new}

  it 'is set up with the necessary Twilio info' do
  expect(subject.account_sid).to eq "ACddec987a4ee673735a04ed771cba040d"
  expect(subject.auth_token).to eq "751238d4d2f48e26332bfbcdd1e84aee"
  end

  it 'can structure a message' do
  expect(subject.structure_message).to be_kind_of Hash
  end

   it 'message has a from-number' do
  expect(subject.structure_message[:from]).to eq "+14695027840"
  end

     it 'message has a to-number' do
  expect(subject.structure_message[:to]).to eq "+46704921341"
  end

end