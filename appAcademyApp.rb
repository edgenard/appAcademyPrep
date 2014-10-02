# Example Problems for Coding Challege 1

def pow(base, exponent)
  result = 1
  exponent.times do
    result = result * base
  end

  return result
end

#puts pow(3, 3)
#puts 3 ** 3

def sum (num_array)
  sum = 0
  num_array.each do |i|
    sum = sum + i
  end
  return sum
end

puts sum([1, 2, 3])

