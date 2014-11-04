def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times=2)
  ("#{text} " * times).strip
end

def start_of_word(word, number)
  word[0..(number - 1)]
end

def first_word(text)
  text.slice(/\w+/)
end

def titleize(text)
    words = text.split
    little_words = %w{and or the over}
    words.collect! do |word|
      if words.index(word) == 0
        word.capitalize
      elsif !little_words.include?(word)
        word.capitalize
      else
        word
      end
    end
    words.join(" ")
end