class CashRegister
    attr_accessor :total, :discount, :price, :title, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @items = []
    end

    def add_item(title, price, quantity = 1)
        
       @last_purchase = self.total 
       self.total += price * quantity
       quantity.times do 
            @items << title 
       end
    end

    def apply_discount
        if  self.discount != 0
            self.total -= (self.total * self.discount.to_f / 100).to_i
            "After the discount, the total comes to $#{self.total}."  
        else
           "There is no discount to apply." 
        end
    end
     
    def void_last_transaction 
        @total = @last_purchase
    end
end     

       





        
       
