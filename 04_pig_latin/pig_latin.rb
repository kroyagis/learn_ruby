def translate(input)
  alphabets = [*'a'..'z']
  vowel = ['a', 'e', 'o', 'i', 'u']
  consonant = []
  # stores all the consonants in the array
  # by removing vowels
  alphabets.each do |x|
    if vowel.include? x
      # do nothing
    else
      consonant << x
    end
  end

  input_array = input.split(//)
  i = 0 # counter

  # input starts with vowel
  if vowel.include? input[i]
    return input + "ay"
  end

  # input starts with consonant
  return_input = []
  while consonant.include? input_array[i]
    return_input << input_array[i]
    input_array.delete_at(i)
  end
  return input_array.join + return_input.join + "ay"



  # if vowel.include? input_array[0]
  #   return input + "ay"
  # end
  #
  # if consonant.include? input_array[0]
  #   return input[1, (input.length)] + input[0] + "ay"
  # end
  #
  # if (consonant.include? input_array[0]) && (consonant.include? input_array[1])
  #   return input[2..(input.length-1)]
  # end
end

#
# def test_translate_word_starting_with_two_consonants
#   s = translate("cherry")
#   assert_equal "errychay", s
# end
#
# def test_translates_two_words
#   s = translate("eat pie")
#   assert_equal "eatay iepay", s
# end
#
# def test_translates_word_starting_with_three_consonants
#   assert_equal "eethray", translate("three")
# end
#
# def test_translates_sch_as_phoneme
#   s = translate("school")
#   assert_equal "oolschay", s
# end
#
# def test_translates_qu_as_phoneme
#   s = translate("quiet")
#   assert_equal "ietquay", s
# end
#
# def test_translates_qu_as_consonant_when_preceded_by_consonant
#   s = translate("square")
#   assert_equal "aresquay", s
# end
#
# def test_translates_many_words
#   s = translate("the quick brown fox")
#   assert_equal "ethay ickquay ownbray oxfay", s
# end
