# algo-ridmz

A collection of puzzles I play with and test. :+1:

I have sourced these fun challenges from:

 * www.Pramp.com
 * www.FrontendMasters.com/courses/data-structures-algorithms


## Definitions

Binary Search:

```ruby
def binary_search(arr, num, start, end_point)
  n = arr.length
  mid = (start + end_point)/2
  while start <= end_point
    if num == arr[mid]
    	return mid
    end
    num > mid ? start = mid + 1 : end_point = mid - 1
  end
  return -1
end
```

Recursion Recipe:
```ruby
def callMyself()
	if <base case>
    return <output>
  else
  	# recursive case
    callMyself(<new arguments>)
  end
  return <output>
end
```
