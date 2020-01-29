require 'pry'

class CashRegister
    attr_accessor :total, :items, :cart, :last_price
    attr_reader :title

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @last_price = 0
    end

    def discount
        @discount
    end

    def add_item(title, price, quantity = 1)
        price = quantity * price 
        @total += price
        quantity.times { @items << title }
        @last_price = price
    end

    def apply_discount
        total = @total - ((0.01 * @discount) * @total )
        total = total.round
        puts "After the discount, the total comes to #{total}"
    end

    # def items
    #     @items
    # end

    def void_last_transaction
     @total -= @last_price
    end

end
