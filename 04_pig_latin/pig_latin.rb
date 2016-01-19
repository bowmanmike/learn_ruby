def vowel(string)
  string = string + "ay"
end

def qu(string)
  beginning = string.slice!(0, 2)
  string = string + beginning + "ay"
end

def consonant_qu(string)
  beginning = string.slice!(0,3)
  string = string + beginning + "ay"
end

def three_consonants(string)
  beginning = string.slice!(0, 3)
  string = string + beginning + "ay"
end

def two_consonants(string)
  beginning = string.slice!(0, 2)
  string = string + beginning + "ay"
end

def one_consonant(string)
  beginning = string.slice!(0)
  string = string + beginning + "ay"
end

def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  string_array = string.split(" ")
  string_array.map! do |string|
    if vowels.include?(string[0])
      vowel(string)

    elsif string[0] == "q" && string[1] == "u"
      qu(string)

    elsif vowels.include?(string[0]) == false && string[1] == "q" && string[2] == "u"
      consonant_qu(string)

    elsif vowels.include?(string[0]) == false && vowels.include?(string[1]) == false && vowels.include?(string[2]) == false
        three_consonants(string)

    elsif vowels.include?(string[0] && string[1]) == false
      two_consonants(string)

    elsif  vowels.include?(string[0]) == false
      one_consonant(string)

    end
  end
  string = string_array.join(" ")



### SOLUTION GRAVEYARD ####
  # end

  # string = string_array.join(" ")





  # if string.start_with?("a", "e", "i", "o", "u")
  #   string = string + "ay"
  # elsif string.start_with?("qu")
  #   beginning = string.slice!(0, 2)
  #   string = string + beginning + "ay"
  # elsif string[0] != ("a" || "e" || "i" || "o" || "u") && string[1] != ("a" || "e" || "i" || "o" || "u") && string[2] != ("a" || "e" || "i" || "o" || "u")
  #   beginning = string.slice!(0, 3)
  #   string = string + beginning + "ay"
  # elsif string[0] != ("a" || "e" || "i" || "o" || "u") && string[1] != ("a" || "e" || "i" || "o" || "u")
  #   beginning = string.slice!(0, 2)
  #   string = string + beginning + "ay"
  # else
  #   beginning = string.slice!(0, 1)
  #   string = string + beginning + "ay"
  # end





  # string = string.downcase.split(" ")
    # string.join(" ")
  # if string[0] || string[1] || string[2] != ("a" || "e" || "i" || "o" || "u")
  #   beginning = string.slice!(0, 3)
  #   string = string + beginning + "ay"
  #
  # elsif string[0] || string[1] != ("a" || "e" || "i" || "o" || "u")
  #   beginning = string.slice!(0, 2)
  #   string = string + beginning + "ay"
  #

  # string = string.split(" ")
  # string.each do |word|
  #   word.
  # end
end
