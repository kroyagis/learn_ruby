# C = (F - 32) * 5/9
# F = C * 9/5 + 32

def ftoc(temperature)
  temperature = (temperature - 32) * 5/9
end

def ctof(temperature)
  temperature = temperature * 9/5 + 32
end
