class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    while quantity > 0
      @items.push(title)
      quantity -=1
    end
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - @discount * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
end