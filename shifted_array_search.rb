# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  # this will be a binary search to find the pivot point
  n = arr.length - 1 # 4
  mid = n/2 # 2
  if num == arr[mid] # false
    p mid
    return mid
  end
  if num == arr[mid-1] # false
    return mid-1
  end
  if arr[mid] > arr[mid-1] # true
    new_arr = arr[mid..n] # [14,10,11]
    shifted_array_search(new_arr, num)
  end
  if arr[mid] < arr[mid-1] #
    new_arr = arr[0..mid] #
    shifted_array_search(new_arr, num)
  end
end
