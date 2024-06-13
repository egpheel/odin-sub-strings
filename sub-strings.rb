# Sub Strings by Eduardo Gil - An assignment for The Odin Project

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(text = '', dictionary = [])
  matching_substrings = []

  dictionary.each do |dict_word|
    # p dict_word if text.include?(dict_word)
    matching_substrings << dict_word if text.include?(dict_word)
  end

  p matching_substrings
end

substrings('below', dictionary)
