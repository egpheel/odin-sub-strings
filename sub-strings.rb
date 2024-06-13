# Sub Strings by Eduardo Gil - An assignment for The Odin Project

def substrings(text = '', dictionary = [])
  words = text.split(' ')
  matching_substrings = []

  words.each do |word|
    dictionary.each do |dict_word|
      matching_substrings << dict_word if word.include?(dict_word)
      # binding.pry
    end
  end

  substrings_with_count = matching_substrings.each_with_object(Hash.new(0)) do |count, substring|
    substring[count] += 1
  end

  p substrings_with_count.sort.to_h
end

def prompt_user_for_text
  dictionary = %w[below down go going horn how howdy it i low own part partner sit]

  puts 'Please type the text to find its substrings below:'
  text = gets.chomp.downcase

  substrings(text, dictionary)
end

prompt_user_for_text
