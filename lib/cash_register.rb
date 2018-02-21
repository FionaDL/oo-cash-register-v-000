require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity=1)
    self.total += price * quantity
     @items << title    
  end



  def apply_discount
    if @discount != 0
      discount_total = discount/100.0 * @total
      discount_total1 = @total - discount_total
      discount_total2 = discount_total1.to_i
      "After the discount, the total comes to $#{discount_total1}."
    else
      "There is no discount to apply."
    end
  end




end
