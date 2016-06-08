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
end

# test = Temperature.new({:f => 50})

# C * 9/5 + 32
# (F - 32) * 5/9
# class MotorCycle
#   def initialize(make, color)
#     @make, @color = make, color
#   end
# end
#
# m = MotorCycle.new('Honda', 'blue')
# m.instance_variable_set(:@make, 'Kawasaki')
# m.instance_variable_set(:@gears, 4)
# puts m.inspect
