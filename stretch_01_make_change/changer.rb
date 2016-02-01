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

    case amount
    when amount >= 25
      Changer.subtract_quarters(amount)
    when amount < 25
      Changer.subtract_dimes(amount)
    when amount < 10
      Changer.subtract_nickels(amount)
    when amount < 5
      Changer.subtract_pennies(amount)
    end
  end

  def self.subtract_quarters(amount)
    @@change << @@quarter
    amount -= 25
    amount
  end

  def self.subtract_dimes(amount)
    @@change << @@dime
    amount -= 10
    amount
  end

  def self.subtract_nickels(amount)
    @@change << @@nickel
    amount -= 5
    amount
  end

  def self.subtract_pennies(amount)
    @@change << @@penny
    amount -= 1
    amount
  end
end
