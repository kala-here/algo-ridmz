# Number of Paths

# You’re testing a new driverless car that is located at the Southwest (bottom-left) corner of an n×n grid. The car is supposed to get to the opposite, Northeast (top-right), corner of the grid. Given n, the size of the grid’s axes, write a function numOfPathsToDest that returns the number of the possible paths the driverless car can take.

# For convenience, let’s represent every square in the grid as a pair (i,j). The first coordinate in the pair denotes the east-to-west axis, and the second coordinate denotes the south-to-north axis. The initial state of the car is (0,0), and the destination is (n-1,n-1).

# The car must abide by the following two rules: it cannot cross the diagonal border. In other words, in every step the position (i,j) needs to maintain i >= j. See the illustration below for n = 4. In every step, it may go one square North (up), or one square East (right), but not both. E.g. if the car is at (2,1), it may go to (2,2) or (3,1).

# Explain the correctness of your function, and analyze its time and space complexities.

# -------------------------------------------------------

# Example grid:
# n = 4
# output = 5

#   _____________________________________________
#   |         |          |          |           |
#   |  -----  |   -----  |  -----   |   (3,3)   |
#   |         |          |          |           |
# ^ _____________________________________________
# | |         |          |          |           |
# | |  -----  |   -----  |  (2,2)   |   (3,2)   |
# | |         |          |          |           |
# j _____________________________________________
# | |         |          |          |           |
# | |  -----  |   (1,1)  |  (2,1)   |   (3,1)   |
# | |         |          |          |           |
# ^ _____________________________________________
#   |         |          |          |           |
#   |  (0,0)  |   (1,0)  |  (2,0)   |   (3,0)   |
#   |         |          |          |           |
#   _____________________________________________
#                   <----i---->


# PSEUDOCODE:
# dest = (n-1, n-1)   => (3,3)
# j cannot be greater than i
# j cannot be greater than n-1
# i cannot be greater than n-1
# On each recursive call, we will have to iterate through j while iterating through i
  # ex of this ^:
    # i = 0 while j = 0
    # i = 1 while j = 0, j = 1
    # i = 2 while j = 0, j = 1, j = 2
    # i = 3 while j = 0, j = 1, j = 2, j = 3
# then off each of those we create new paths...

def num_of_paths_to_dest(n)
  return recursive_path(n, 0, 0, 0)
end

def recursive_path(n, i, j, count)
  if i == n && j == n
    return count += 1
  end
  if i < n - 1
    i += 1
    return
  end
  if j < n - 1 && j < i
    j += 1
    return
  end
  return recursive_path(n, i, j, count)
end
