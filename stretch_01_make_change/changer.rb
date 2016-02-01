# require 'pry'
# Use remainder function ##

class Changer

  @@change = []

  def self.make_change(amount)
    @@change = []

    (amount / 25).times { @@change << 25 }
    amount = amount % 25
    (amount / 10).times { @@change << 10 }
    amount = amount % 10
    (amount / 5).times { @@change << 5 }
    amount = amount % 5
    amount.times { @@change << 1 }

    @@change
  end
end
