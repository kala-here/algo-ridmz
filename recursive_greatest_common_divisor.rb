# Write a function that takes two numbers and returns the greatest common divisor.
# I am going to assume that 0 cannot be taken in as an argument

def recursive_gcd(a, n)
  if n == 0
    return a
  end
  return recursive_gcd(n, a%n)
end

__END__

1. a=8, n=12
2. a=12, n=8
3. a=8, n=4
4. a=4, n=0
