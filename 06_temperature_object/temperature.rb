class Temperature

  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end

  def self.in_celsius(temp)
    @c
  end

  def self.in_fahrenheit(temp)
    @f
  end

  def to_celsius
    (@f - 32) * 5.0 / 9.0
  end

  def to_fahrenheit
    @c * (9.0 / 5.0) + 32
  end
end

class Celsius < Temperature
  def initialize(temp)
    @c = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f = temp
  end
end
