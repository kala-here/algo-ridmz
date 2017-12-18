# Implement a function that flattens a nested array.
# flatten([1,[2],[3, [[4]]]]);
# => [1,2,3,4]

def recursive_flatten_the_array(nested)
  flattened = []
  i = 0
  while i < nested.length - 1
    if nested[i] != '[' && nested[i] != ']'
      flattened << nested[i]
    end
    i += 1
  end
  return flattened
end
