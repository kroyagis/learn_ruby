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

  if vowel.include? input[0]
    input + "ay"
  end
end
#
# def test_translate_word_starting_with_consonant
#   s = translate("banana")
#   assert_equal "ananabay", s
# end
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
