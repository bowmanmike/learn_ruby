class Temperature

  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end

  def self.in_celsius(temp)
    new_temp = Temperature.new(c: temp)
  end

  def self.in_fahrenheit(temp)
    new_temp = Temperature.new(f: temp)
  end

  def to_celsius
    if @f != nil
      (@f - 32) * 5.0 / 9.0
    else
      @c
    end
  end

  def to_fahrenheit
    if @c != nil
      @c * (9.0 / 5.0) + 32
    else
      @f
    end
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
