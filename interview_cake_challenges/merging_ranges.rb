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
# time complexity for building the arr = O(n); for sorting it, it would be O(n*log(n)); for searching for gaps, it would be O(n) because we are going to be looking at each item in the array and it's neighbor. SO THE TIME COMPLEXITY WOULD BE O(N*LOG(N))
# space complexity would be O(n) to build the new arr and again O(n) to build the new ranges. SO SPACE COMPLEXITY WOULD BE O(N)


def merge_ranges(timeslots)

end
