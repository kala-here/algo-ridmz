# Bracket Match -- as sourced from www.Pramp.com

# A string of brackets is considered correctly matched if every opening bracket in the string can be paired up with a later closing bracket, and vice versa. For instance, “(())()” is correctly matched, whereas “)(“ and “((” aren’t. For instance, “((” could become correctly matched by adding two closing brackets at the end, so you’d return 2.

# Given a string that consists of brackets, write a function bracketMatch that takes a bracket string as an input and returns the minimum number of brackets you’d need to add to the input in order to make it correctly matched.

# Explain the correctness of your code, and analyze its time and space complexities.

# -----------------------------------------------------

def bracketMatch(inputString)
        pair = { "("=>")" }
        stack = []
        text = inputString.split("")

        for i in 0..text.length
                lastIndx = stack.length==0?0:stack.length-1
                if stack
                        lastItem = stack[lastIndx]
                end
                if stack.length == 0
                        stack.push(text[i])
                else
                        if lastItem=="(" and pair[lastItem] == text[i]
                                stack.pop()
                        else
                                stack.push(text[i])
                        end
                end
        end
        return stack.length-1
end

puts bracketMatch(")()") # expected: 1 
puts bracketMatch("()))())") # expected: 3
puts bracketMatch("((((())()())(()()()()(")# expected: 4

__END__

The time complexity of the algorithm would be O(n) as the number of loops in the for loop depends on the size of the input given.
The space complexity on the other hand is as follows:
i) Best Case: O(1) considering only one bracket would be given
ii) Average Case: O(n) as most of the string contents are stored again in the form of a stack
