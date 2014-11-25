#Your own to_s method

# I'm assuming that for a base > 10, I will be taking a string representation that
# I will have to turn into base 10 and then turn into a string. 

def num_to_s(num, base)
  raise "Please give a base greater than 1 and less than 16" if base <= 1 || base > 16

  number_string_hash = {0 =>"0", 1 =>"1", 2 =>"2", 3 =>"3", 4 =>"4", 5 =>"5", 6 =>"6",
  7 =>"7", 8 =>"8", 9 =>"9" }
  
  if base > 10
    num = num.to_i(base)
    base = 10
  end
  
  num_string = ""
  num_place = 0
  while num > 0
    current_digit = (num / base**num_place) % base
    num = num - (current_digit * (base**num_place))
    num_string.prepend(number_string_hash[current_digit])
    num_place += 1
  end
  num_string
end



def caesar(string, shift)
  string_to_digits = []
  string.each_byte {|e| string_to_digits << e}
  string_to_digits.map! do |digit|
    if digit + shift < 97
      reach_around = digit - 97 + shift
      digit = 123 + reach_around
    elsif digit + shift > 122
      reach_around = shift -  (122 - digit)
      digit = 96 + reach_around 
    else
      digit = digit + shift
    end
  end.map! { |e| e.chr }.join 
end

p caesar("hello", -3)