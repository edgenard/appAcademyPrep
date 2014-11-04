def add(*numbers)
  numbers.reduce(:+)
end

def subtract(*numbers)
  numbers.reduce(:-)
end

def sum(numbers)
  if numbers.empty?
    return 0
  end
  numbers.reduce(:+)
end

def multiply(*numbers)
  numbers.reduce(:*)    
end

def power(number, exponent)
  number ** exponent
    
end

def factorial(number)
  if number <= 1
    return 1
  end
  number * factorial(number - 1)
end