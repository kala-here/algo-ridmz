# Implement a function that flattens a nested array.
# flatten([1,[2],[3, [[4]]]]);
# => [1,2,3,4]

def recursive_flatten_the_array(nested, flattened)
  i = 0
  while i < nested.length
    if nested[i+1] == nil && nested[i].class != Array
      return flattened
    end
    if nested[i].class != Array
      flattened << nested[i]
    else
      recursive_flatten_the_array(nested, flattened)
    end
    i += 1
  end
end
