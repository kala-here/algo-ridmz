# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num. If num is not in shifted array, return -1.

def shifted_array_search(arr, num)
  # save time by checking if length is 1
  if arr.length < 3 # false
    i = 0
    while i < arr.length
      if arr[i] == num
        return i
      else
        i += 1
      end
    end
    return -1
  end
  pivot_point = find_pivot(arr) # 0
  # save time by checking if num is at pivot point
  if num == arr[pivot_point] # false
    return pivot_point
  end
  # check to see if num is at beginning of array
  if num == arr[0] # false
    return 0
  end
  # if num is less than the value at beginning of array, binary search AFTER pivot point
  if num < arr[0] # false
    return binary_search(arr, pivot_point, arr.length - 1, num)
  end
  # if num is greater than the value at beginning of array, binary search BEFORE pivot point
  if num > arr[0] # true
    if pivot_point == 0
      return binary_search(arr, 0, arr.length - 1, num)
    end
    return binary_search(arr, 0, pivot_point - 1, num)
  end
end

# input = array, output = index of pivot point
def find_pivot(arr)
  n = arr.length - 1
  start = 0
  finish = n
  # account for a sorted array by checking if value at start is less than ending value
  if arr[0] < arr[n]
    return 0
  end
  while start <= finish
    # find mid of array, followed by iterations of finding mid of sub array
    mid = start + (finish-start)/2
    # check left neighbor. if neighbor is larger, we have found the pivot point
    if arr[mid] < arr[mid-1]
      return mid
    end
    # if mid is larger than beginning of array, search for pivot after mid
    if arr[mid] > arr[0]
      start = mid + 1
    # if mid is larger than it's left neighbor and smaller than beginning of array, that means pivot point is within first sub array
    else
      finish = mid - 1
    end
  end
end

# output will be index of num or -1 if num is not present
def binary_search(arr, start, finish, num)
  # start and finish create the sub array of either before or after the pivot point
  while start <= finish
    # find mid of that sub array
    mid = start + (finish - start)/2
    # if mid value is less than num, create new sub array starting after mid
    if arr[mid] < num
      start = mid + 1
    # if mid value is equal to num, return mid
    elsif arr[mid] == num
      return mid
    # if mid value is greater than num, create new sub array starting before mid
    else
      finish = mid - 1
    end
  end
  # otherwise, num is not in array and we return -1 for the record
  return -1
end


__END__
[4, 5, 6, 1, 2], 2
[12, 13, 14, 10, 11], 13
[1, 2, 3, 4], 1
