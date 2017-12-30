# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
#
# Write a method get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.
#
# For example, given:
#
#   [1, 7, 3, 4]
#
# your method would return:
#
#   [84, 12, 28, 21]
#
# by calculating:
#
#   [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]
#
# Do not use division in your solution.

# PSEUDOCODE
# look at each index in the array
# mulitply everything around it together
# push that num into a new arr
# return new arr

def get_products_of_all_ints_except_at_index(arr)
  i = 0
  n = arr.length - 1
  new_arr = []
  while i <= n
    to_mult = []
    if i == 0
      to_mult = arr[1..n]
    else
      arr[0...i].each do |item|
        to_mult << item
      end
      arr [(i+1)..n].each do |item|
        to_mult << item
      end
    end
    product = 1
    to_mult.each do |x|
      product *= x
    end
    new_arr << product
    i += 1
  end
  return new_arr
end
