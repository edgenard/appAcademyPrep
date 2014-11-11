def translate(text)
  words = text.split
  words = words.collect do |word|
    if word[0] =~ /\A[aeiou]/i #Starts with vowel
      word = word + "ay"
      if punctuation = word[/!|\?|\.|:|;|,/] #Punctuation Check
        word = word.delete(punctuation) + punctuation
      end
    word
    elsif word[/\A(qu|[bcdfghjklmnpqrstvwxyz]qu)/i] #Starts with 'qu' or consonant + 'qu'
      consonants = word[/\A(qu|[bcdfghjklmnpqrstvwxyz]qu)/i]
      if word[/\A(QU|[BCDFGHJKLMNPQRSTVWXYZ]QU)/] #Capitalization check
        word = word.delete(consonants) + consonants.downcase + 'ay'
        word = word.capitalize
      else
        word = word.delete(consonants) + consonants + 'ay'
      end 
      if word[/!|\?|\.|:|;|,/]
        punctuation = word[/!|\?|\.|:|;|,/]
        word = word.delete(punctuation) + punctuation
      end
      word
    elsif word[0] =~ /[bcdfghjklmnpqrstvwxyz]/i
      consonants = word[/\A[bcdfghjklmnpqrstvwxyz]+/i]
      if word[/\A[BCDFGHJKLMNPQRSTVWXYZ]/]
         word = word.delete(consonants) + consonants.downcase + 'ay'
         word = word.capitalize
       else
         word = word.delete(consonants) + consonants + 'ay'
      end
      if punctuation = word[/!|\?|\.|:|;|,/]
        word = word.delete(punctuation) + punctuation
      end
      word
    end
  end
  words = words.join(' ')
  return words
end



