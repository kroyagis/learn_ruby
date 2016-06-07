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
  (1..x).inject(:*) || 1
end
