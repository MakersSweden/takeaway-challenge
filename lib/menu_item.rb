class MenuItem
  # I put the attr_accessors on seperate lines to make it
  # easier to read and make changes in the future, such as
  # removing set methods from some or all of the attributes.
  # See this style guide: http://naildrivin5.com/ruby-style/
  attr_accessor :item_number
  attr_accessor :name
  attr_accessor :desc
  attr_accessor :unit_price
  attr_accessor :currency

  def initialize(item_number, name, desc, unit_price, currency)
    @item_number = item_number
    @name = name
    @desc = desc
    @unit_price = unit_price # no cents
    @currency = currency
  end
end