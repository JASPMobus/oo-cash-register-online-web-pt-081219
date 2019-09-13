class CashRegister
  attr_accessor :total, :discount, :cart
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times do 
      @cart.push(item)
      
      @total += price
    end
  end
  
  def apply_discount
    prev = @total 
    
    @total *= ((100.0 - @discount) / 100)
    
    if @total == prev
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
end 