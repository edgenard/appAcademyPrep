
def nearest_larger(arr, idx)
  right = larger_right(arr, idx)
  left = larger_left(arr, idx)
  if right.nil? && !left.nil?
    return left
  elsif !right.nil? && left.nil?
    return right
  end
  if right.nil? && left.nil?
    return nil
  end
  if (left-idx) > (idx - right)
    return right
  else
    return left
  end
end

def larger_right(arr, idx)
  arr[idx..arr.length].each do |value|
    if value > arr[idx]
      return arr.index(value)
    end
  end
  nil
end

def larger_left(arr, idx)
  arr[0..idx].reverse_each do |value|
    if value > arr[idx]
      return arr.index(value)
    end
  end
  nil
end




