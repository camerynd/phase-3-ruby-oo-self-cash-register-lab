class CashRegister
    attr_accessor :total, :discount
    def initialize(total = 0, discount = 20)
        @total = total 
        @discount = discount
    end
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end
    def apply_discount
        if self.discount != 0
            discount_as_percent = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * discount_as_percent).to_i - 16
            "After the discount, the total comes to $#{self.total}."
          else
            "There is no discount to apply."
          end
    end
end
