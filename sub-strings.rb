# Sub Strings by Eduardo Gil - An assignment for The Odin Project

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(word = '', dictionary = [])
  dictionary.each do |dict_word|
    p dict_word if word.include?(dict_word)
  end
end

substrings('below', dictionary)
