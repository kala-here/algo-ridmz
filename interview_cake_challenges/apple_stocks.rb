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
# My first thought was that min and max of arr were relevant. They're not.
# Example: [20,2,6,1,0]
# The max profit here lies between 2 & 6. Neither of those are related to the min or max efficiently.
# Now, I am thinking that we do have to iterate through each item and compare with every item after it.

  def get_max_profit(arr)
    i = 0
    max_profit = 0
    while i < arr.length
      j = i + 1
      while j < arr.length
        profit = arr[j] - arr[i]
        if profit > max_profit
          max_profit = profit
        end
        j += 1
      end
      i += 1
    end
    return max_profit
  end


  # TIME COMPLEXITY = O(n^2) because there is a loop inside of a loop
  # SPACE COMPLEXITY = O(n) because we are not creating new storage more than the arr
