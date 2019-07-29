require 'pry'

class CashRegister
attr_accessor :total, :discount, :list, :last_price


def initialize(discount=20)
  @total = 0
  @discount = discount
  @list = []
  @last_price = []
end

def total
  @total
end

def add_item(title, price,quantity=1)
  self.total += (price*quantity)
   quantity.times{@list << title}
   quantity.times{@last_price << price}

end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total = self.total*(1-(@discount.to_f/100))
    "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
  @list
end

def void_last_transaction
  @total -= @last_price.last
  @last_price.delete_at(-1)
  @list.delete_at(-1)
  @total
end

end
