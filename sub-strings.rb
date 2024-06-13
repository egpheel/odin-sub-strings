# Sub Strings by Eduardo Gil - An assignment for The Odin Project

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(text = '', dictionary = [])
  matching_substrings = []

  dictionary.each do |dict_word|
    matching_substrings << dict_word if text.include?(dict_word)
  end

  substrings_with_count = matching_substrings.each_with_object(Hash.new(0)) do |count, substring|
    substring[count] += 1
  end

  p substrings_with_count
end

substrings('below', dictionary)
