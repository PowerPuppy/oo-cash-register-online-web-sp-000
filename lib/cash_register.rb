require 'pry'

class CashRegister
attr_accessor :total, :discount, :list


def initialize(discount=20)
  @total = 0
  @discount = discount
  @list = []
end

def total
  @total
end

def add_item(title, price,quantity=1)
  self.total += (price*quantity)
   @list << title
   @last << (price*quantity)

end

def apply_discount(discount)
  @discount = discount
  @total = self.total*(1+(discount/100))
  if discount == 20
    puts "After the discount, the total comes to $#{self.total}."
  else
    puts "There is no discount to apply."
  end
end

def items
  @list
end

def void_last_transaction
  @total = self.total - self.last.pop
  @last = self.last.last
end

end
