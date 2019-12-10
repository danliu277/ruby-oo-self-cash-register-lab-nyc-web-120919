class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    if discount == 0
      puts "There is no discount to apply"
    else
      @total *= (1 - @discount * 0.01)
      puts "After the discount, the total comes to #{@total}."
    end
  end
end