def ordered_vowel_words(str)
  str.split.select {|word| ordered_vowel_word?(word)}.join(' ')
end

def ordered_vowel_word?(word)
  if !word.index(/[aeiou]/)
    return true
  else
    vowels = word.scan(/[aeiou]/)
    return vowels == vowels.sort
  end
  
end