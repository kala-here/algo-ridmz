
# Well, I'm not that well-versed in ruby and my ruby implementation wasn't the best.

def bracketMatch(inputString):
        pair = { "(":")" } # Dictionary to keep track of the bracket pairs
        stack = [] # To store the brackets
        text = list(inputString) # "Hello" => ['H', 'e', 'l', 'l', 'o']

        for i in range(0, len(text)):
                lastIndx = 0 if len(stack)==0 else len(stack)-1 # Get the previous index
                if stack:
                        lastItem = stack[lastIndx] # if stack has elements then get the last element
                if len(stack) == 0:
                        stack.append(text[i]) # if no elements then push the character to the stack
                else:
                        if lastItem=="(" and pair[lastItem] == text[i]:
                                stack.pop()
                        else:
                                stack.append(text[i])
        
        return len(stack) # the number of left over brackets

print bracketMatch("(()))")
# Expected output: 1
