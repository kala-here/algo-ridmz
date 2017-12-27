# Getting a Different Number
# Given an array arr of unique nonnegative integers, implement a function getDifferentNumber that finds the smallest nonnegative integer that is NOT in the array.

# Even if your programming language of choice doesn’t have that restriction (like Python), assume that the maximum value an integer can have is MAX_INT = 2^31-1. So, for instance, the operation MAX_INT + 1 would be undefined in our case.

# Your algorithm should be efficient, both from a time and a space complexity perspectives.

# Solve first for the case when you’re NOT allowed to modify the input arr. If successful and still have time, see if you can come up with an algorithm with an improved space complexity when modifying arr is allowed. Do so without trading off the time complexity.
# ___________________________________
# PSEUDOCODE
# With a hash table, we would not have to sort (modify) the array
# This would allow us to have a time complexity of O(n), I believe. Space complexity of O(n) as well.
# If we did a sorting method, the time complexity would be O(nlogn)

def get_different_num(arr)
  hash = {}
  largest = 0
  arr.each do |item|
    hash[item] = item
    if item > largest
      largest = item
    end
  end
  if hash[0] == nil
    return 0
  end
  i = 1
  while i <= largest + 1
    if hash[i] == nil
      return i
    end
    i += 1
  end
end
