# 1200. Minimum Absolute Difference
# Given an array of distinct integers arr, find all pairs of elements with the minimum absolute difference of any two elements.

# Return a list of pairs in ascending order(with respect to pairs), each pair [a, b] follows

# a, b are from arr
# a < b
# b - a equals to the minimum absolute difference of any two elements in arr


# Example 1:

# Input: arr = [4,2,1,3]
# Output: [[1,2],[2,3],[3,4]]
# Explanation: The minimum absolute difference is 1. List all pairs with difference equal to 1 in ascending order.
# Example 2:

# Input: arr = [1,3,6,10,15]
# Output: [[1,3]]
# Example 3:

# Input: arr = [3,8,-10,23,19,-4,-14,27]
# Output: [[-14,-10],[19,23],[23,27]]


# Constraints:

# 2 <= arr.length <= 10^5
# -10^6 <= arr[i] <= 10^6

def minimum_abs_difference(arr)
  arr.sort!
  n = arr.size
  i = 0
  min = arr[1] - arr[0]
  new_arr = []

  while i < n - 1
    a = (arr[i] - arr[i + 1]).abs
    min > a ? min = a : min
    new_arr << [arr[i], arr[i+1]] if min == a
    # p "#{arr[i]}, #{arr[i+1]}, #{(arr[i] - arr[i + 1]).abs}"
  i += 1
  end
  new_arr_1 = []

  new_arr.each_with_index do |val, i|
    if (val[0] - val[1]).abs == min
      new_arr_1 << val
    end
  end
  new_arr_1
end

p minimum_abs_difference([3,8,-10,23,19,-4,-14,27])
p minimum_abs_difference([4,2,1,3])
p minimum_abs_difference([40,11,26,27,-20])
