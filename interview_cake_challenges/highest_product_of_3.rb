# Given an array of integers, find the highest product you can get from three of the integers.

# The input array_of_ints will always have at least three integers.

def highest_product_of_3(arr)
  n = arr.length
  if n < 3
    return "There must be at least 3 items in the array to make a product out of."
  end
  sorted = arr.sort!
  highest_3 = []
  # we will grab the last 3 items in the arr and mult them together
end
