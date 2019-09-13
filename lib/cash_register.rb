class CashRegister
  attr_accessor :total, :discount, :cart
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = {}
  end 
  
  def add_item(item, price, quantity = 1)
    if cart.has_key?(item)
      cart[item] += quantity
    else 
      cart[item] = quantity
    end 
    
    @total += (price * quantity)
  end
  
  def apply_discount
    @total *= ((100 - @discount) / 100)
  end 
end 