# given a shifted array of an unknown offset (that is otherwise sorted), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  # this will be a binary search
  n = arr.length
  mid_i = n/2
  if num == arr[mid_i]
    return mid_i
  end
end
