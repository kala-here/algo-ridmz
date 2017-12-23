# Implement recursive factorial

def recursive_factorial(num)
  if num == 0
    return nil
  end
  if num == 1
    return 1
  end
  if num == 2
    return 2
  end
  return num * recursive_factorial(num-1)
end
