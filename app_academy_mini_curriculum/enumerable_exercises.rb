#Write a method that takes an array of integers and returns an array with the array elements multiplied by two.

def times_two(array)
  array.map {|e| e * 2}
end




# Write a method that finds the median of a given array of integers.
# If the array has an odd number of integers, return the middle item from the sorted array.
# If the array has an even number of integers, return the average of the middle two items from the sorted array

def median(array)
  if array.length % 2 == 0
    first_middle = array.length / 2 - 1
    second_middle = first_middle + 1
    (array.sort[first_middle] + array.sort[second_middle]) / 2.0
  else
    middle = array.length / 2 
    array.sort[middle]
  end
end


# Create a method that takes in an Array of Strings and uses inject to return the concatenation of the strings.

def concatenate(array)
  array.inject(:+)
end



p concatenate(["Yay ", "for ", "strings!"])








































