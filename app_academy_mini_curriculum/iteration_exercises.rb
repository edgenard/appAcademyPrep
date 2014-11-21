#iteration exercises

#1. Loop through all the numbers, stopping when you encounter a number that is 
#   (a) >250 and (b) divisible by 7. Print this number down!


i = 0

while true
  if i > 250 && i % 7 == 0
    puts i
    break
  end
  i += 1
end

#=> 252

#2. Print out all the factors for each of the numbers 1 through 100.

factors = {}
(1..100).each do |num|
  factors[num] = []
  (1..100).each do |factor|
    if num % factor == 0
      factors[num] << factor
    end
  end  
end

#puts factors

#3. Implement Bubble sort in a method #bubble_sort that takes an Array and modifies it so that it is in sorted order.

def bubble_sort(arr)

  while true
    swapped = false
    arr.each_with_index do |element, index|
      if  (index + 1) < arr.length && element > arr[index + 1]
        change = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1 ] = change
        swapped = true
      end
    end
    if !swapped
      break
    end
  end

  arr
end

test = [3, 1, 6, 2, 7, 4]

p bubble_sort(test)

p bubble_sort(test) == test.sort