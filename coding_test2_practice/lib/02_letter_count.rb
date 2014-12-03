def letter_count(str)
  letter_count = {}
  str.gsub(/\s+/, "").each_char do |chr|
    letter_count[chr] = str.count(chr)
  end
  letter_count
end
