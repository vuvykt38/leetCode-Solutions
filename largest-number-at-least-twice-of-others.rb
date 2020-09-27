# 747. Largest Number At Least Twice of Others
# In a given integer array nums, there is always exactly one largest element.

# Find whether the largest element in the array is at least twice as much as every other number in the array.

# If it is, return the index of the largest element, otherwise return -1.

# Example 1:

# Input: nums = [3, 6, 1, 0]
# Output: 1
# Explanation: 6 is the largest integer, and for every other number in the array x,
# 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.


# Example 2:

# Input: nums = [1, 2, 3, 4]
# Output: -1
# Explanation: 4 isn't at least as big as twice the value of 3, so we return -1.


# Note:

# nums will have a length in the range [1, 50].
# Every nums[i] will be an integer in the range [0, 99].

def dominant_index(nums)
  n = nums.size
  return 0 if n == 1
  return 0 if nums[0] == nums[1] && n == 2

  arr = []
  nums.map { |e| arr << e}
  arr.sort!

  # p "#{arr[n-1]}, #{arr[n-2]}"
  t = arr[n-1] if arr[n-1] >= (2 * arr[n-2])

  index_value = nil

  nums.each_with_index { |val, i| index_value = i if val == t}
  index_value != nil ? index_value : -1
end

p dominant_index([3, 6, 1, 0]) == 1
p dominant_index([1, 2, 3, 4]) == -1
p dominant_index([1,0]) == 0
p dominant_index([0]) == 0
p dominant_index([1,1]) == 0
p dominant_index([0,0,0,1]) == 3

