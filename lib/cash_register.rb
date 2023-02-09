class CashRegister
    
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0, total = 0, items = [])
        @discount = discount
        @total = total
        @items = items

    end
  
    def add_item(title, price, quantity = 1)
        
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times {self.items << title}
    end

    def apply_discount
        self.total -= (self.total * self.discount/100).to_i
        self.total !=0 ?  "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
    end


    def void_last_transaction
        self.total -= self.last_transaction
    end
    
end

register = CashRegister.new
