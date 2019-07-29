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

def apply_discount(discount)
  @discount = discount
  @total = self.total*(1+(discount.to_f/100))
  if discount == 20
    "After the discount, the total comes to $#{self.total}."
  else
    puts "There is no discount to apply."
  end
end

def items
  @list
end

def void_last_transaction
  @total = self.total - self.last_price.last
  self.last_price.pop
  self.list.pop
end

end
