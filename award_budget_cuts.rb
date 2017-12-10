# Award Budget Cuts -- as resourced from www.pramp.com

# The awards committee of your alma mater (i.e. your college/university) asked for your assistance with a budget allocation problem they’re facing. Originally, the committee planned to give N research grants this year. However, due to spending cutbacks, the budget was reduced to new_budget dollars and now they need to reallocate the grants. The committee made a decision that they’d like to impact as few grant recipients as possible by applying a maximum cap on all grants. Every grant initially planned to be higher than cap will now be exactly cap dollars. Grants less or equal to cap, obviously, won’t be impacted.

# Given an array grants_array of the original grants and the reduced budget new_budget, write a function findGrantsCap that finds in the most efficient manner a cap such that the least number of recipients is impacted and that the new budget constraint is met (i.e. sum of the N reallocated grants equals to new_budget).

# Analyze the time and space complexities of your solution.

def calc_sum(array)
  # get num of items in array
  n = array.length
  # create var for sum of arr
  total = 0
  # iterate thru array to add each value to total sum
  i = 0
  while i < n
    total += array[i]
    i += 1
  end
  total
end
# grants_array = [2, 30, 50, 120, 1000] && new_budget = 190
def find_grants_cap(grants_array, new_budget)
  # sort arr
  orig_arr = grants_array.sort # => [2, 30, 50, 120, 1000]
  arr = orig_arr # => [2, 30, 50, 120, 1000]
  sum = calc_sum(grants_array) # => 1202
  p sum
  if sum <= new_budget
    return orig_arr.last
  end
  # get num of recipients
  n = grants_array.length # => 5
  # find temp cap by dividing budget by num of recipients
  temp_cap = new_budget/n # => 38
  # create var for keeping count of changed nums
  ch = 0
  # iterate thru arr (w/o .each built-in method)
  i = 0
  while i < n
    # if item is greater than temp_cap, replace with temp_cap and increment num of changed items by 1
    if arr[i] > temp_cap
      arr[i] = temp_cap
      ch += 1
    end
    i += 1
  end # => [2, 30, 38, 38, 38] && ch = 3
  sum = calc_sum(arr) # => 146
  p sum

  # if sum of arr is equal to new budget, then we are done, if not, we need to disperce the extra funds
  if sum != new_budget
    extras = new_budget - sum # => 44
    p extras
  else
    return arr.last
  end
  additional_funds = extras/ch # => 14
  p additional_funds
  temp_cap += additional_funds # => 52
  p temp_cap
  orig_arr.each do |item| # => [2, 30, 50, 120, 1000]
   if item > temp_cap
      ch += 1
      item = temp_cap
   else
     item = item
   end
  end
  p orig_arr
  return orig_arr.last
end
__END__


grants_array = [2, 30, 50, 120, 1000], new_budget = 190, output = 47

n = grants_array.length # get num of recipients
=> 5

temp_cap = new_budget/n #find temp cap by dividing budget by num of recipients
=> 190/5 = 38

grants_array = grants_array.sort
original_array = grants_array
=> [2 30 50 120 1000]

changed = 0
grants_array.map do |item|
  if item > temp_cap
      item = temp_cap
      changed += 1
  end
end
=> changed = 4
=> [2 38 38 38 38] # sum = 154

sum = 0
grants_array.each { |x| sum += x }
if sum != new_budget
  extras = new_budget - sum
end
=> extras = 46

additional_funds = extras/changed
=> 11
temp_cap += additional_funds
=> 49

#add this num to every changed item, but do not exceed original num
original_array.map do |item|
   if item > temp_cap
      item = temp_cap
      changed += 1
  end
end
