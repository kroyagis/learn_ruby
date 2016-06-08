# still not perfect..
# Does not take into consideration the case
# user input is phoneme followed by phoneme... I think
# e.g) 'ququiet' 'schschool'


def translate(input)
  alphabets = [*'a'..'z']
  vowel = ['a', 'e', 'o', 'i', 'u']
  consonant = (alphabets - vowel)


  input_word_array = input.split(/\s/) # splits the user input by white space
  word_alphabets_array = [] # an array for storing an array of alphabetized user input

  master_return = [] # master array which stores the converted piglatins


  input_word_array.each do |word|
    word_alphabets_array << word.split(//)
  end

  phoneme_list = [['s', 'c', 'h'], ['q', 'u']] # no no list...

  word_alphabets_array.each do |word_alphabets|
    consonant_return = [] # resets every loop!!!

    if vowel.include? word_alphabets[0] # when input starts with vowel
      master_return << (word_alphabets.join + "ay")
    elsif consonant.include? word_alphabets[0] # when input starts with a consonant
      phoneme_list.each do |phoneme_word| # check to see if the word contains phoneme
          while phoneme_word.include? word_alphabets[0]
            consonant_return << word_alphabets[0]
            word_alphabets.delete_at(0)
          end
      end
      while consonant.include? word_alphabets[0]
        consonant_return << word_alphabets[0]
        word_alphabets.delete_at(0)
      end
      master_return << word_alphabets.join + consonant_return.join + "ay"
    end
  end
  return master_return.join(' ')
end
