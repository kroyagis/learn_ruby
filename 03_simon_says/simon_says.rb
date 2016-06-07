def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num = 2)
    next_input = " #{input}"
    input + next_input * (num-1)
end

def start_of_word(input, number)
  input[0, number]
end

#
# def test_start_of_word_returns_first_two_letters
#   assert_equal "Bo", start_of_word("Bob", 2)
# end
#
# def test_start_of_word_returns_first_many_letters
#   s = "abcdefg"
#
#   assert_equal "a", start_of_word(s, 1)
#   assert_equal "ab", start_of_word(s, 2)
#   assert_equal "abc", start_of_word(s, 3)
# end
#
# # first_word
# def test_first_word
#   assert_equal "Hello", first_word("Hello World")
#   assert_equal "oh", first_word("oh dear")
# end
#
# # titleize
# def test_titleize_capitalizes_a_word
#   assert_equal "Jaws", titleize("jaws")
# end
#
# # capitalize every word
# def test_titleize_title_case
#   assert_equal "David Copperfield", titleize("david copperfield")
# end
#
# def test_titleize_not_little_words
#   assert_equal "War and Peace", titleize("war and peace")
# end
#
# def test_titleize_little_words_at_start
#    assert_equal "The Bridge over the River Kwai", titleize("the bridge over the river kwai")
# end
# end
