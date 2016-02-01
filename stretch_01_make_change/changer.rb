# require 'pry'
# Use remainder function ##

class Changer

  @@change = []

  @@quarter = 25
  @@dime = 10
  @@nickel = 5
  @@penny = 1

  def self.make_change(amount)
    amount = amount.to_i
    @@change = []

    case amount
    when amount % 25 >= 0
      Changer.subtract_quarters(amount)
    when amount % 10 >= 0
      Changer.subtract_dimes(amount)
    when amount % 5 >= 0
      Changer.subtract_nickels(amount)
    else
      Changer.subtract_pennies(amount)

    end

    @@change
  end

  def self.subtract_quarters(amount)
    @@change << @@quarter
    amount -= 25
  end

  def self.subtract_dimes(amount)
    @@change << @@dime
    amount -= 10
  end

  def self.subtract_nickels(amount)
    @@change << @@nickel
    amount -= 5
  end

  def self.subtract_pennies(amount)
    @@change << @@penny
    amount -= 1
  end
end
