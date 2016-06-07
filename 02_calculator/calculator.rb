def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  array.inject(0) { |sum, n| sum + n}
end

def multiply(x, y)
  x * y
end

def multiply_several(x)
  x.inject(1) { |sum, n| sum * n}
end

def factorial(x)
  if x == 0
    1
  elsif x > 0
    x.times do |i|
      i * (i + 1)
    end
  end
end
