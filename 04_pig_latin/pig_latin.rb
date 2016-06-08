# still not perfect..
# Does not take into consideration the case
# user input is phoneme followed by phoneme... I think
# e.g) 'ququiet' 'schschool'

def translate(input)
  vowel = ['a', 'e', 'o', 'i', 'u']
  phoneme_alphabets = [['s', 'c', 'h'], ['q', 'u']] # no no list...
  alphabets_array = [] # an array for storing an array of alphabetized user input
  master_return = [] # master array which stores the converted piglatins

  words_array = input.split(/\s/) # splits the user input by white space
  words_array.each do |word|
    alphabets_array << word.split(//)
  end

  alphabets_array.each do |alphabets|
    return_consonants = [] # resets every loop!!!

    if vowel.include? alphabets[0] # when input starts with vowel
      master_return << (alphabets.join + "ay")
    else # when input starts with a consonant
      phoneme_alphabets.each do |phoneme_alphabets| # check to see if the word contains phoneme
        while phoneme_alphabets.include? alphabets[0]
          return_consonants << alphabets[0]
          alphabets.delete_at(0)
        end
      end
      while !vowel.include? alphabets[0]
        return_consonants << alphabets[0]
        alphabets.delete_at(0)
      end
      master_return << alphabets.join + return_consonants.join + "ay"
    end
  end
  return master_return.join(' ')
end
