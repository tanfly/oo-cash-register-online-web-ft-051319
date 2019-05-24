class CashRegister 
  attr_accessor :total, :discount, :items, :transactions
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
     transaction = price * quantity
     @total << transaction 
     
  end
  
  def apply_discount 
    if @discount > 0 
    @discount = (@discount / 100.0) 
    real_discount = (@total * @discount)
    @total -= real_discount.to_f
     "After the discount, the total comes to $#{@total.to_i}."
   else 
     "There is no discount to apply."
   end
  end
  
  def void_last_transaction 
    @total -= @transactions.pop
  end
end
