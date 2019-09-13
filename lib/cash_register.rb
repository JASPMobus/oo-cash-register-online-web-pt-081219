class CashRegister
  attr_accessor :total, :discount, :cart
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = {}
  end 
  
  def add_item(item, price)
    if cart.has_key?(item)
      cart[item] += 1
    else 
      cart[item] = 1 
    end 
    
    @total += price
  end 
end 