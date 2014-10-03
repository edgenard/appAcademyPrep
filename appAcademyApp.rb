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

#puts sum([1, 2, 3])



def is_prime(num)
  if num <= 3
    return num >= 2
  end
  if num % 2 == 0
    return false
  end
  def prime_check(num)
    test_numbers = []
    start = 3
    while start <= (num ** 0.5).ceil
      test_numbers<< start
      start = start + 1
    end
    test_numbers = test_numbers.delete_if {|i| !is_prime(i)}
    return test_numbers
  end
  prime_check(num).each do |e|
    if num % e == 0
      return false
    end
  end
  return true
end

#puts is_prime(10007)


def prime(max)
  prime_array = []
  number = 2
  while number <= max - 1
    if is_prime(number)
      prime_array<< number
    end
    number = number + 1
  end
  return prime_array
end

print prime(50)







