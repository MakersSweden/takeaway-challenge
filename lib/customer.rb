class Customer

  attr_accessor :cust_id
  attr_accessor :cust_name
  attr_accessor :cust_phone

  def initialize(cust_id, cust_name, cust_phone)
    @cust_id = cust_id
    @cust_name = cust_name
    @cust_phone = cust_phone
  end
end
