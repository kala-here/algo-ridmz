# Write a function that outputs the nth Fibonnaci number. A number in this sequence is found by adding up the two numbers before it.
# Fibonnaci's sequence:
# input    0 1 2 3 4 5 6  7  8  9 ...
# output   0 1 1 2 3 5 8 13 21 34 ...
# What is the time complexity? Can you think of optimizing your solution? (Hint: look up dynamic programming)

def recursive_fibonacci(nth_in_seq)
  if nth_in_seq == 0
    return 0
  end
  if nth_in_seq == 1
    return 1
  end
  if nth_in_seq == 2
    return 1
  end
  return recursive_fibonacci(nth_in_seq-1) + recursive_fibonacci(nth_in_seq-2)
end
