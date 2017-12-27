# Suppose we could access yesterday's stock prices as an array, where:

# The indices are the time in minutes past trade opening time, which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

# Write an efficient method that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

# For example:

#   stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

# get_max_profit(stock_prices_yesterday)
# returns 6 (buying for $5 and selling for $11)

# No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).
# _____________________________
# PSEUDOCODE
# Our goal is to first find the min & then the max after that min and the diff between the two?
  # but then what if the biggest diff is not related to the min of the arr?
  # For example: [3, 10, 0, 1]
  # ^ in this case, the biggest diff is between 3 & 10...

# So based on that, I would say that we need to find the max PAST each item we are looking at and find the diff between current_item and max_past_it. This sounds expensive on time... but I am going to start coding and see if I can optimize later
# An example of what this will look like:
  # [4,9,3,10,12,20,0,3]
  # so first we find the max in the whole arr => 20
  # 4 & 20 => 16
  # 9 & 20 => 11
  # 3 & 20 => ...
# So based on this... we want to find the max and min of the arr
  # If max comes after min, return difference ** BASE CASE (OR FASTEST CASE)
  # Else, find min from sub-arr of items BEFORE max (assign it to maxs_min)
  # find max of sub-arr after arr's original min (assign it to mins_max)
  # compare mins_max to maxs_min, return the larger number

  def get_max_profit(arr)
    min = arr.min
    max = arr.max
    if arr.index(max) > arr.index(min)
      return max - min
    end
  end
