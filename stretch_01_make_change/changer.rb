# require 'pry'

class Changer


  @@quarter = 25
  @@dime = 10
  @@nickel = 5
  @@penny = 1

  def self.make_change(amount)

    change = []

    while amount > 25
      Changer.subtract_quarters(amount)
    end

    while amount < 25
      Changer.subtract_dimes(amount)
    end

    while amount < 10
      Changer.subtract_nickels(amount)
    end

    while amount < 5
      Changer.subtract_pennies(amount)
    end
  end

  def self.subtract_quarters(amount)
    while amount >= 25
      change << @@quarter
      amount -=25
    end
    amount
  end

  def self.subtract_dimes(amount)
    while amount >= 10
      change << @@dime
      amount -=10
    end
    amount
  end

  def self.subtract_nickels(amount)
    while amount >= 10
      change << @@nickel
      amount -= 5
    end
    amount
  end

  def self.subtract_pennies(amount)
    while amount > 0
      change << @@pennies
      amount -= 1
    end
    amount
  end


  # def self.make_change(amount)
  #
  #   change = []
  #
  #   # case amount
  #   # when > 25
  #   #   subtract_quarter(amount)
  #   # when
  #   # end
  #
  #   if amount < 5
  #     while amount > 0 do
  #       # binding.pry
  #       change << @@penny
  #       amount -= 1
  #     end
  #
  #   elsif amount <= 10 && amount >= 5
  #     change << @@nickel
  #     amount -= 5
  #     while amount > 0 do
  #       change << @@penny
  #       amount -= 1
  #     end
  #
  #   elsif amount <= 25
  #     while amount >= 10 do
  #       change << @@dime
  #       amount -= 10
  #       while amount >= 5 && amount < 10 do
  #         change << @@nickel
  #         amount -=5
  #         while amount > 0 do
  #           change << @@penny
  #           amount -= 1
  #         end
  #       end
  #     end
  #
  #   else
  #     while amount >= 25 do
  #       change << @@quarter
  #       amount -= 25
  #       while amount >= 10 do
  #         change << @@dime
  #         amount -= 10
  #         while amount >= 5 && amount < 10 do
  #           change << @@nickel
  #           amount -=5
  #           while amount > 0 do
  #             change << @@penny
  #             amount -= 1
  #           end
  #         end
  #       end
  #     end
  #
  #
  #   end
  #
  #   return change
  #
  #   # if amount == 50
  #   #   [25, 25]
  #   # elsif amount == 20
  #   #   [10, 10]
  #   # elsif amount == 10
  #   #   [10]
  #   # elsif amount == 25
  #   #   [25]
  #   # elsif amount == 7
  #   #   [5, 1, 1]
  #   # elsif amount == 68
  #   #   [25, 25, 10, 5, 1, 1, 1]
  #   # end
  # end
end
