
require "pry"

class CashRegister 

    attr_accessor :total, :discount, :last_transaction  #it is a reader and a writer - update and see
    attr_reader #getter is "update" aka reader
    attr_writer :dollars #setter is "see" aka writer

    #accessor as a reader/writer it does it all. #writer initialize an instance you can write an attribute. 
    #writer you can't see 
    #reader once you initialize you can see it aka read it but without a writer method you cannot
    #overwrite it and update it 

    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

   def add_item(title, price, amount = 1)
        @total += price * amount
   end

   def apply_discount
    if discount > 0 
        my_discount = @total * @discount/100
        @total = total - my_discount
        "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."        
    end
  end

  def items(item, price)
     @items << item      
  end

  #idea
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end


