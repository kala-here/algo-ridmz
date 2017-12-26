require_relative ' ../../../stack'
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
# We have to take into consideration the order in which each peren comes

# If we are keeping track of the order, for every closing bracket, there has to be one opening available for a pair before it.
# So when we peek and see an opening bracket, we push into the opening stack
# when we peek and see a closing bracket, we peek into the opening stack, if not nil, pop it off into the void as well as the closing bracket.
# if there is no opening bracket for a pair, push closing bracket into closing array
# now, instead of finding the difference between the two stacks, we will add them together for the output


def bracket_match(str)
  brackets = Stack.new(str)
  opening = Stack.new('')
  closing = Stack.new('')
  while brackets.size > 0
    if brackets.peek == '('
      opening.push(brackets.pop)
    end
    if brackets.peek == ')'
      if opening.peek == '('
        opening.pop
        brackets.pop
      else
        closing.push(brackets.pop)
      end
    end
    if brackets.peek != '(' && brackets.peek != ')'
      brackets.pop
    end
  end
  sum_of_missing = opening.size + closing.size
  return sum_of_missing
end
