def word_unscrambler(str, words)
  words.select do |word|
    is_anagram?(str, word)
  end
end

def is_anagram?(word1, word2)
  if word1.split(//).sort == word2.split(//).sort
    return true  
  end
  false  
end
