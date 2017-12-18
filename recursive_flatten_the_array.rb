# Implement a function that flattens a nested array.
# flatten([1,[2],[3, [[4]]]]);
# => [1,2,3,4]

def recursive_flatten_the_array(nested, flattened)
  i = 0
  while i < nested.length
    if nested[i].class != Array
      flattened << nested[i]
    else
      recursive_flatten_the_array(nested[i], flattened)
    end
    i += 1
  end
  flattened
end

__END__
__CALL STACK__

i = 0
while i < nested.length
  if nested[i].class != Array
    flattened << nested[i]
  else
    recursive_flatten_the_array(flattened, [])
  end
  i += 1
end
flattened
