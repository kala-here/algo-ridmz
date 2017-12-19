# given a shifted array of an unknown offset (that is otherwise sorted from smallest to largest), find an efficient way to return the index of num

def shifted_array_search(arr, num)

end

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
