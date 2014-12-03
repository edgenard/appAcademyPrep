def morse_encode(str)
  str.split.map do |word|
    morse_encode_word(word)
  end.join("  ")
end

def morse_encode_word(word)
  morse_hash = { "a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", 
    "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", 
    "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.",
    "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...",
    "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-",
    "y" => "-.--", "z" => "--.."}
  morse_code = []
  word.each_char do |chr|
    morse_code << morse_hash[chr] 
  end
  morse_code.join(' ')
end

