# Write a method for reversing a linked list. Do it in-place.

# Your method will have one input: the head of the list.

# Your method should return the new head of the list.

def reverse_linked_list(head)

  current = head
  prev = nil
  next_node = nil

  while current
    next_node = current.next
    current.next = prev
    prev = current
    current = next_node
  end

  return prev

end
