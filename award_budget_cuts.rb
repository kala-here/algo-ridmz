def calc_sum(arry, current_sum)
  arry.each { |x| current_sum += x }
  return current_sum
end

def find_grants_cap(grants_array, new_budget)

  # sort arr in descending order
  arr = grants_array
  arr = arr.sort
  arr = arr.reverse!
  n = arr.length

  # get the sum of the array to then see if we need to move forward
  sum = 0
  sum = calc_sum(arr, sum)

  # if sum is less than or equal to new budget, we are done/can return first item in array
  if sum <= new_budget
    return arr[0]
  end

  # skip first item in array since we know it is too large to fit in new_budget
  # see if making value of arr[0] = arr[1] makes the sum <= new_budget
  sum = 0
  i = 0
  while i < n-2
    sum = calc_sum(arr, sum)
    if sum <= new_budget
      break
    else
      arr[i] = arr[i+1]
      sum = calc_sum(arr,sum)
      i += 1
    end
  end
  p '**********'
  p arr
  # sum = 0
  # for x in arr
  #   next_lowest_value = arr[arr.index(x)+1]
  #   until sum <= new_budget
  #     x = next_lowest_value
  #     sum = calc_sum(arr, sum)
  #   end
  #   sum
  # end
  # arr[0]
end
