class CashRegister

  attr_accessor :total, :discount, :last_transaction
  @@totals = 0

  def initialize (discount = 0)
    @total = 0
    @discount = discount

  end


  def add_item (title, price, quantity=1)
    self.total =+ price * quantity

  end

  def apply_discount
    if @discount == 0
     "There is no discount to apply."
   end
      discount_total = discount/100 * @total
      discount_total1 = @total - discount_total
      "After the discount, the total comes to $#{discount_total1}."
    end
  end




end
