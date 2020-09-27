# 724. Find Pivot Index
# Given an array of integers nums, write a method that returns the "pivot" index of this array.

# We define the pivot index as the index where the sum of all the numbers to the left of the index is equal to the sum of all the numbers to the right of the index.

# If no such index exists, we should return -1. If there are multiple pivot indexes, you should return the left-most pivot index.



# Example 1:

# Input: nums = [1,7,3,6,5,6]
# Output: 3
# Explanation:
# The sum of the numbers to the left of index 3 (nums[3] = 6) is equal to the sum of numbers to the right of index 3.
# Also, 3 is the first index where this occurs.
# Example 2:

# Input: nums = [1,2,3]
# Output: -1
# Explanation:
# There is no index that satisfies the conditions in the problem statement.


# Constraints:

# The length of nums will be in the range [0, 10000].
# Each element nums[i] will be an integer in the range [-1000, 1000].

def pivot_index(nums)
  n = nums.size
  return -1 if n == 0
  return 0 if nums[1..n].sum == 0
  t = -1
  i = 1
  while i < n
    # p "i: #{i}, #{nums[0..i-1]}, #{nums[i+1..n-1]}"
    return i if nums[0..i-1].sum == nums[i+1..n-1].sum
    t == i
  i += 1
  end
  t
end

p pivot_index([1,7,3,6,5,6]) == 3
p pivot_index([1,2,3]) == -1
p pivot_index([]) == -1
p pivot_index([1,1]) == -1
p pivot_index([1,0]) == 0
p pivot_index([-1,-1,0,0,-1,-1]) == 2

