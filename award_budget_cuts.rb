def find_grants_cap(grants_array, new_budget)

  # sort arr in descending order
  arr = grants_array
  arr = arr.sort
  arr = arr.reverse!
  n = arr.length

  # get the sum of the array to then see if we need to move forward
  sum = 0
  arr.each { |x| sum += x }

  # if sum is less than or equal to new budget, we are done/can return first item in array
  if sum <= new_budget
    return arr[0]
  end

  # skip first item in array since we know it is too large to fit in new_budget
  # see if making value of arr[0] = arr[1] makes the sum <= new_budget
p arr
  for x in arr
    sum = 0
    until sum <= new_budget
      p x
      x = x.next
      p x
      arr.each { |x| sum += x } # DRY this up
    end
    p sum
  end
end
