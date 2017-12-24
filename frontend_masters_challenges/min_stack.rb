# Keep track of min value in your stack in constant time

require_relative '../stack'

def min_stack(arr)
  stack = Stack.new(arr)
  min_track = Stack.new([])
  # Initialize min_track with first apparent lowest
  min_track.push(stack.pop)
  while stack.size != 0
    if min_track.peek <= stack.peek
      min_track.push(stack.pop)
    else
      min_track.push(min_track.peek)
      stack.pop
    end
  end
  return min_track.peek
end
