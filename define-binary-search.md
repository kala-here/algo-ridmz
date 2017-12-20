BINARY SEARCH
1. find the start and end of the array
2. find the middle via    start + (end-start)/2 (OR (end + start)/2)   (and compare num with mid)
  :: this is taking in to consideration where we are in the array
    :: for example ::
    We start in the original mid
      ::less than mid::
      If we find that the num we are looking for is smaller than mid
      We need to find the mid of the lower half now.
        :: start = 0
        :: end = mid - 1 (because we have already compared with mid)
        :: therefore mid = 0 + (mid-1-0)/2
      ::greater than mid::
      If we find that the num we are looking for is greater than mid
      We need to find the mid of the upper half now.
        :: start = mid + 1 (because we have already compared with mid)
        :: end = end (if we are looking at anything left of any mid, end = previous end, which was mid - 1; otherwise, end = arr.length -1)
        :: therefore mid = mid+1 + (end - mid+1)/2
3. recurse until base case
