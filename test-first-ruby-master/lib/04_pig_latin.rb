def translate(text)
  words = text.split
  words = words.collect do |word|
    if word[0] =~ /\A[aeiou]|\A[AEIOU]/ #Starts with vowel
      word = word + "ay"
      if word[/!|\?|\.|:|;|,/] #Punctuation Check
        punctuation = word[/!|\?|\.|:|;|,/]
        word = word.delete(punctuation) + punctuation
      end
    word
    elsif word[/\A(qu|[bcdfghjklmnpqrstvwxyz]qu)|\A(Qu|[BCDFGHJKLMNPQRSTVWXYZ]qu)/] #Starts with 'qu' or consonant + 'qu'
      consonants = word[/\A(qu|[bcdfghjklmnpqrstvwxyz]qu)|\A(Qu|[BCDFGHJKLMNPQRSTVWXYZ]qu)/]
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
    elsif word[0] =~ /[bcdfghjklmnpqrstvwxyz]|[BCDFGHJKLMNPQRSTVWXYZ]/
      consonants = word[/\A[bcdfghjklmnpqrstvwxyz]+|\A[BCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyz]+|\A[BCDFGHJKLMNPQRSTVWXYZ]/]
      if word[/\A[BCDFGHJKLMNPQRSTVWXYZ]/]
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
    end
  end
  words = words.join(' ')
  return words
end



