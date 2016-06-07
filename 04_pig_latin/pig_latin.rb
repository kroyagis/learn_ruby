def translate(input)
  alphabets = [*'a'..'z']
  vowel = ['a', 'e', 'o', 'i', 'u']
  consonant = (alphabets - vowel)


  input_array = input.split(/\s/)
  master_array = []

  # stores an array of array
  input_array.each do |x|
    master_array << x.split(//)
  end

  master_return = []
  phoneme_list = ['sch', 'qu']
  master_array.each do |x|
    # input starts with vowel
    if vowel.include? x[0]
      master_return << (x.join + "ay")
    end

    # input starts with consonant
    return_input = []
    if consonant.include? x[0]
      while consonant.include? x[0]
        return_input << x[0]
        x.delete_at(0)
      end
      master_return << x.join + return_input.join + "ay"
    end
  end
  return master_return.join(' ')

end

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
