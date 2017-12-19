# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  # this will be a binary search

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
