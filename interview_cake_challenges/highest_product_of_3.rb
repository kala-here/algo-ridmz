# Given an array of integers, find the highest product you can get from three of the integers.

# The input array_of_ints will always have at least three integers.

def highest_product_of_3(arr)
  p arr
  n = arr.length
  if n < 3
    return "There must be at least 3 items in the array to make a product out of."
  end
  if n == 3
    return arr.reduce(1, :*)
  end
  sorted = arr.sort!
  if sorted[0] >= 0 || sorted[-1] < 0
    # we will grab the last 3 items in the arr and mult them together
    return sorted[-1] * sorted[-2] * sorted[-3]
  end
  # neg * neg = pos
  highest_to_neg = sorted[-1] - (sorted[-1] * 2)
  if highest_to_neg > sorted[1]
    return sorted[0] * sorted[1] * sorted[-1]
  end
end
