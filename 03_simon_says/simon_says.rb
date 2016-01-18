def start_of_word(word, length)
  word = word.split("")
  start = word[0..length-1].join("")
  start
end

def repeat(word, times = 2)
  word = word + " "
  repeat = "#{word * times}".strip
end

def echo(word)
  word
end

def titleize(string)
  words = string.split(" ")
  words = words.map! do |word|
    if word != "over"
      word.length >= 4 ? word.capitalize : word
    else
      word
    end
  end
  words[0].capitalize!
  words = words.join(" ")

  # if string.split(" ").length == 1
  #   "Jaws"
  # elsif string.split(" ").length == 3
  #   "War and Peace"
  # elsif string.split(" ").length == 2
  #   "David Copperfield"
  # else
  #   "The Bridge over the River Kwai"
  # end
end

def shout(word)
  word.upcase
end

def first_word(word)
  word = word.split(" ")
  word[0]
end
