# Bracket Match

# A string of brackets is considered correctly matched if every opening bracket in the string can be paired up with a later closing bracket, and vice versa. For instance, “(())()” is correctly matched, whereas “)(“ and “((” aren’t. For instance, “((” could become correctly matched by adding two closing brackets at the end, so you’d return 2.

# Given a string that consists of brackets, write a function bracketMatch that takes a bracket string as an input and returns the minimum number of brackets you’d need to add to the input in order to make it correctly matched.

# Explain the correctness of your code, and analyze its time and space complexities.

# -----------------------------------------------------

# PSEUDOCODE
# for every item, push into new stack.
# if item == '(', next pushed into that stack will be ')' & vise versa
# once a new stack has a size of 2, it will be deleted
# in the end, we will push remaining stacks into one stack and the size of that stack will be the output

# OR (since the previous idea could proveto be challenging with keeping track of multiple stacks and deleting and such)

# each '(' gets pushed into one stack and each ')' gets pushed into another stack
# the diff between the two stack sizes is our output
# I think this will be less time and to save on space, we could pop off every time there is a pair...
