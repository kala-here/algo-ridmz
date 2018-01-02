# Your company built an in-house calendar tool called HiCal. You want to add a feature to see the times in a day when everyone is available.

# To do this, you’ll need to know when any team is having a meeting. In HiCal, a meeting is stored as arrays of integers [start_time, end_time]. These integers represent the number of 30-minute blocks past 9:00am.

# For example:

# [2, 3]  # meeting from 10:00 – 10:30 am
# [6, 9]  # meeting from 12:00 – 1:30 pm

# Write a method merge_ranges() that takes an array of meeting time ranges and returns an array of condensed ranges.

# For example, given:

#   [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]

# your method would return:

#   [[0, 1], [3, 8], [9, 12]]

# Do not assume the meetings are in order. The meeting times are coming from multiple teams.

# Write a solution that's efficient even when we can't put a nice upper bound on the numbers representing our time ranges. Here we've simplified our times down to the number of 30-minute slots past 9:00 am. But we want the method to work even for very large numbers, like Unix timestamps. In any case, the spirit of the challenge is to merge meetings where start_time and end_time don't have an upper bound.

# PSEUDOCODE:
# Brute force: for each nested arr, push items between ranges into new arr
  # if items already exist in the arr, skip it
# sort the arr, then find gaps in the arr and make new ranges based on that
# time complexity for building the arr = O(n); for sorting it, it would be O(n*log(n)); for searching for gaps, it would be O(n) because we are going to be looking at each item in the array and it's neighbor. SO THE TIME COMPLEXITY WOULD BE O(N LOG N)
# space complexity would be O(n) to build the new arr and again O(n) to build the new ranges. SO SPACE COMPLEXITY WOULD BE O(N)
# -----------------------------------
# Another way to look at this is to find the pattern
# We would find the first meeting (the min of arr[i][0]) and say: if the end time of this meeting is greater than or equal to the start time of another meeting, merge those ranges (use start time of first and end time of other) and keep checking for this pattern until we have reached the end of the timeslots arr


# TIME COMPLEXITY = O(n log n) because we are going to sort this arr
# SPACE COMPLEXITY = O(n) to build the new arr


def merge_ranges(timeslots)
  arr = timeslots.sort
  if arr.length == 1
    return timeslots
  end
  new_arr = []
  current_meeting = arr.delete_at(0)
  while arr.length > 0
    next_meeting = arr.delete_at(0)
    if current_meeting[1] >= next_meeting[0]
      current_meeting = [current_meeting[0], next_meeting[1]]
      if arr.length == 0
        new_arr << current_meeting
      end
    else
      new_arr << current_meeting
      current_meeting = next_meeting
    end
  end
  return new_arr
end
