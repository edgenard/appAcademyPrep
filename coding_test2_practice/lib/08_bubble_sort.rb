def bubble_sort(arr, stop=arr.length-1)
  if arr.empty? || arr.length == 1
    return arr
  end
  swapped = false
  index = 0
  while index + 1 <= stop
    left = arr[index]
    right = arr[index + 1]
    if left > right
      arr[index] = right
      arr[index+1] = left
      swapped = true      
    end
    index += 1
  end

  if swapped
    stop = stop - 1
    bubble_sort(arr, stop)
  else
    return arr
  end
end
