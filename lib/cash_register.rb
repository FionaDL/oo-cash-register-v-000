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
    quantity.times do
     @items << title
   end
   self.last_transaction = price * quantity
  end



  def apply_discount
    if @discount != 0
      discount_total = (discount/100.0 * @total)
      discount_total1 = @total - discount_total
      discount_total2 = discount_total1.to_i
      @total = discount_total2
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
