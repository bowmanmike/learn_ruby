# require 'pry'

class Changer

  @@quarter = 25
  @@dime = 10
  @@nickel = 5
  @@penny = 1

  def initialize
  end

  def self.make_change(amount)

    change = []

    if amount < 5
      while amount > 0 do
        # binding.pry
        change << @@penny
        amount -= 1
      end

    elsif amount <= 10
      change << @@nickel
      amount -= 5
      while amount > 0 do
        change << @@penny
        amount -= 1
      end

    elsif amount <= 25
      while amount >= 10 do
        change << @@dime
        amount -= 10
        while amount >= 5 do
          change << @@nickel
          amount -=5
          while amount > 0 do
            change << @@penny
            amount -= 1
          end
        end
      end

    else
      
    end

    return change

    # if amount == 50
    #   [25, 25]
    # elsif amount == 20
    #   [10, 10]
    # elsif amount == 10
    #   [10]
    # elsif amount == 25
    #   [25]
    # elsif amount == 7
    #   [5, 1, 1]
    # elsif amount == 68
    #   [25, 25, 10, 5, 1, 1, 1]
    # end
  end
end
