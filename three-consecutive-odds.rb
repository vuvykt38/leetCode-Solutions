# 1550. Three Consecutive Odds
# Given an integer array arr, return true if there are three consecutive odd numbers in the array. Otherwise, return false.


# Example 1:

# Input: arr = [2,6,4,1]
# Output: false
# Explanation: There are no three consecutive odds.
# Example 2:

# Input: arr = [1,2,34,3,4,5,7,23,12]
# Output: true
# Explanation: [5,7,23] are three consecutive odds.


# Constraints:

# 1 <= arr.length <= 1000
# 1 <= arr[i] <= 1000

def three_consecutive_odds(arr)
  n = arr.size
  return false if n < 3
  new_arr = []
  i = 1
  while i < n - 1
    return true if (arr[i-1] % 2 != 0 && arr[i] % 2 != 0 && arr[i+1] % 2 != 0)
  i += 1
  end
  false
end

p three_consecutive_odds([2,6,4,1]) == false
p three_consecutive_odds([1,2,34,3,4,5,7,23,12]) == true
p three_consecutive_odds([1,5,3]) == true
p three_consecutive_odds([1,2,1,1]) == false
