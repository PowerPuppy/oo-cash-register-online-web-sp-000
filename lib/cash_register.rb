require 'pry'

class CashRegister
attr_accessor :total, :discount

EMPLOYEE_DISCOUNT = 20%

def initialize(discount=EMPLOYEE_DISCOUNT)
  @total = 0
end

def total
  @total
end

def add_item(title, price,quantity=1)
  self.total += (price*quantity)
end


end
