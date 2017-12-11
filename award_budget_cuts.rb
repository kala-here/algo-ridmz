def find_grants_cap(grants_array, new_budget)

  # sort arr in descending order
  arr = grants_array
  arr = arr.sort
  arr = arr.reverse!

  # get the sum of the array to then see if we need to move forward
  sum = 0
  arr.each { |x| sum += x }

  # if sum is less than or equal to new budget, we are done/can return first item in array
  if sum <= new_budget
    return arr.first
  end
end
