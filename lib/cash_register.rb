require 'pry'

class CashRegister
attr_accessor :total, :discount

employee_discount = 20%

def initialize(discount=employee_discount)
  @total = 0
end

def total
  @total
end

def add_item(title, price,quantity=1)
  self.total += (price*quantity)
end


end
