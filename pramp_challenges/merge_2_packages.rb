# Merging 2 Packages
# Given a package with a weight limit and an array of item weights, implement a function getIndicesOfItemWeights that finds two items whose sum of weights equals the weight limit. Your function should return a pair [i, j] of the indices of the item weights, ordered such that i < j. If such a pair doesn’t exist, return an empty array.

# Analyze the time and space complexities of your solution.

# PSEUDOCODE
# I will create a hash lookup (O(1)) then iterate over the arr to sum pairs up until we return the FIRST pair that sums up to limit or until we reach the end of the arr
# to make sure that we don't add the item in the arr with itself, we will have to create a counter

def get_indices_of_item_weights(arr, limit)
  n = arr.length
  if arr.length < 2
    return 'There are not enough items to sum up'
  end
  if n == 2
    if arr[0] + arr[1] == limit
      return [0,1]
    else
      return []
    end
  end
  sets = {}
  indices = []
  i = 0
  while i < n
    if sets[arr[i]]
      sets[arr[i]] = 'double'
    else
      sets[arr[i]] = arr[i]
    end
    i += 1
  end
  p sets
  i = 0
  while i < n

    i += 1
  end
end
