# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)
  if arr.length == 1
    return arr[0]
  end
  pivot_point = find_pivot(arr)
  if num == pivot_point
    return pivot_point
  end
  if num < arr[0]
    return binary_search(arr, pivot_point, arr.length - 1, num)
  end
  if num > arr[0]
    return binary_search(arr, 0, pivot_point - 1, num)
  end
end

end

def binary_search(arr, start, finish, num)
  n = arr.length - 1
  start = 0
  mid = pivot
  finish = arr[n]
  if num == pivot
    return pivot
  end
  if num > pivot #search left
    upper_half = arr[start]
    binary_search(upper_half, num)
  end
  if num < arr[mid_i] #search right
    lower_half = arr[0..mid_i]
    shifted_array_search(lower_half, num)
  end
end

# input = array, output = index of pivot point
def find_pivot(arr)
  n = arr.length - 1
  start = 0
  finish = n
  while start <= finish
    mid = start + (finish-start)/2
    if mid == 0 || arr[mid] < arr[mid-1]
      return mid
    end
    if arr[mid] > arr[0]
      start = mid + 1
    else
      finish = mid - 1
    end
  end
end


__END__
[4, 5, 6, 1, 2], 2
[12, 13, 14, 10, 11], 10
[1, 2, 3, 4], 1
