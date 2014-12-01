def closest(arr, point)
  closest = []
  difference = (point - arr[0]).abs
  arr.each do |value|
    if (point - value).abs < difference
      closest << value
    end
  end
  if closest.empty?
    return arr
  end
  closest
end


def nearest_larger(arr, idx)
  index_larger = []
  arr.each_with_index do |value, index|
    if value > arr[idx]
      index_larger << index
    end
  end
  if index_larger.empty?
    return nil
  end
  index_larger = closest(index_larger, idx)
  index_larger.sort[0]
end

