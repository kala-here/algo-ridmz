# Implement a function that will reverse a string recursively.
# reverse('abcdefg')
# => 'gfedcba'

# edgecases: include whitespaces

# pseudocode: push into array, then convert to string again from last to first

def reverse(str)
  arr = str.split('')
  n = arr.length - 1
  new_str = ''
  i = n
  while i >= 0
    new_str << arr[i]
    i -= 1
  end
  return new_str
end
