# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  # this will be a binary search to find the pivot point
  n = arr.length - 1
  mid = n/2
  if num == arr[mid]
    return arr[mid]
  end
  if num == arr[mid-1]
    return arr[mid-1]
  end
  if arr[mid] > arr[mid-1]
    new_arr = arr[mid..n]
    shifted_array_search(new_arr, num)
  end
end



end

__END__
[4, 5, 6, 1, 2], 2

n = arr.length - 1 # 4
mid_i = n/2 # 2
if num == arr[mid_i] # false
  return mid_i
end
if num > arr[mid_i]
  upper_half = arr[mid_i..n]
  shifted_array_search(upper_half, num)
end
if num < arr[mid_i]
  lower_half = arr[0..mid_i]
  shifted_array_search(lower_half, num)
end
