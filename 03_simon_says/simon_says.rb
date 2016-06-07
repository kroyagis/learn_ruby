def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num = 2)
  # My two different ways to do this

  # next_input = " #{input}"
  # input + next_input * (num-1)

  input_index = []
  num.times do
    input_index << input
  end
  return input_index.join(" ")
end

def start_of_word(input, number)
  input[0, number]
end

def first_word(input)
  (input.split(/\s/))[0]
end

def titleize(input)
  puncs = ['and', 'over', 'the']
  array = input.split(' ')
  array.map! do |x|
    if puncs.include? x.downcase
      x.downcase
    else
      x.capitalize
    end
  end
  array[0] = array[0].capitalize
  return array.join(" ")

  # To capitalize every word in a sentece:
  # input.split.map { |x| x.capitalize }.join(" ")

end
