class CashRegister
    attr_accessor :discount, :total, :items, :last_item_price
    def initialize discount = 0
        @discount = discount
        @total = 0
        @items = []
        @last_item_price = 0
    end
    def add_item (title, price, quantity = 1)
       quantity.times {self.items << title}
       @last_item_price = price * quantity
        self.total += price * quantity
    end
    def apply_discount 
        if @discount == 0
            "There is no discount to apply."
        else
            self.total -= self.total * @discount / 100
            "After the discount, the total comes to $#{self.total}."
        end
    end
    def void_last_transaction
        self.total -= @last_item_price
    end
end
