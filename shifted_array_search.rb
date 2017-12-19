# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num. If num is not in shifted array, return -1.

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


def binary_search(arr, start, finish, num)
  # x = [10, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  # start = 1
  # finish = 4
  # num = 2
  while start <= finish
    mid = start + (finish - start)/2
    if arr[mid] < num
      start = mid + 1
    elsif arr[mid] == num
      return mid
    else
      finish = mid - 1 #
    end
  end
  return -1
end


# input = array, output = index of pivot point
def find_pivot(arr)
  n = arr.length - 1
  start = 0
  finish = n
  if arr[0] < arr[n]
    return 0
  end
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
[12, 13, 14, 10, 11], 13
[1, 2, 3, 4], 1
