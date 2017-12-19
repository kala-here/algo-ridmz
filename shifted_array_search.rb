# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  # this will be a binary search
  n = arr.length
  mid_i = (n-1)/2
  p arr[mid_i]
  if num == arr[mid_i]
    return mid_i
  end
  if num > arr[mid_i]
    upper_half = arr[mid_i...n-1]
    shifted_array_search(upper_half, num)
  end
  if num < arr[mid_i]
    lower_half = arr[0...mid_i]
    shifted_array_search(lower_half, num)
  end
end
