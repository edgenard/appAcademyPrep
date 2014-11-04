def translate(text)
  if text[0] =~ /[aeiou]/
    text = text + 'ay'
  elsif text[0] =~/\b[bcdfghjklmnpqrstvwxyz]+/
      text = text.slice(1..text.length) + (text[0] + 'ay')
  end
  text

  text = text.sub(/pattern/) { |match|  }
end