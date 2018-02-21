require 'pry'

class CashRegister
  #each .new is a transaction
  #each transaction begins with a total of 0, a possible discount, an ability to call the last transaction, and an empty array of items

  attr_accessor :total, :discount, :last_transaction, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity=1)
     self.total =+ price * quantity
    @total
  end

  def apply_discount
    if @discount != 0
      discount_total = discount/100.0 * @total
      discount_total1 = @total - discount_total
      "After the discount, the total comes to $#{discount_total1}."
    else
      "There is no discount to apply."
    end
  end




end
