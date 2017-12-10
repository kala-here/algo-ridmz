# Award Budget Cuts -- as resourced from www.pramp.com

# The awards committee of your alma mater (i.e. your college/university) asked for your assistance with a budget allocation problem they’re facing. Originally, the committee planned to give N research grants this year. However, due to spending cutbacks, the budget was reduced to newBudget dollars and now they need to reallocate the grants. The committee made a decision that they’d like to impact as few grant recipients as possible by applying a maximum cap on all grants. Every grant initially planned to be higher than cap will now be exactly cap dollars. Grants less or equal to cap, obviously, won’t be impacted.

# Given an array grantsArray of the original grants and the reduced budget newBudget, write a function findGrantsCap that finds in the most efficient manner a cap such that the least number of recipients is impacted and that the new budget constraint is met (i.e. sum of the N reallocated grants equals to newBudget).

# Analyze the time and space complexities of your solution.


def find_grants_cap(grantsArray, newBudget)

end
__END__


grantsArray = [2, 100, 50, 120, 1000], newBudget = 190, output = 47

n = grantsArray.length # get num of recipients
=> 5

temp_cap = newBudget/n #find temp cap by dividing budget by num of recipients
=> 190/5 = 38

grantsArray = grantsArray.sort
original_array = grantsArray
=> [2 40 100 120 1000]

changed = 0
grantsArray.map do |item|
  if item > temp_cap
      item = temp_cap
      changed += 1
  end
end
=> changed = 4
=> [2 38 38 38 38] # sum = 154

sum = 0
grantsArray.each { |x| sum += x }
if sum != newBudget
  extras = newBudget - sum
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
