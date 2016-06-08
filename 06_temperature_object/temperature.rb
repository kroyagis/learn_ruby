class Temperature
  attr_accessor :unit, :value

  def initialize(input)
    input.each do |unit, value|
      # instance_variable_set("@#{unit}", value)
      @unit = unit
      @value = value
    end
  end

  def to_fahrenheit
    if @unit == :f
      return value
    elsif @unit == :c
      return (value * 9/5) + 32
    end
  end

  def to_celsius
    if @unit == :f
      return (value - 32)* 5/9
    elsif @unit == :c
      return value
    end
  end

  def self.in_celsius(input)
    self.new({:c => input})
  end

  def self.in_fahrenheit(input)
    self.new({:f => input})
  end

end

class Celsius < Temperature
  def initialize(temperature)
    @unit = :c
    @value = temperature
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @unit = :f
    @value = temperature
  end
end

# C * 9/5 + 32
# (F - 32) * 5/9
