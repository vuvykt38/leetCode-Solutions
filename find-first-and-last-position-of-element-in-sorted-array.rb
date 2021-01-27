# 34. Find First and Last Position of Element in Sorted Array

# Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.

# If target is not found in the array, return [-1, -1].

# Follow up: Could you write an algorithm with O(log n) runtime complexity?



# Example 1:

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:

# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:

# Input: nums = [], target = 0
# Output: [-1,-1]


# Constraints:

# 0 <= nums.length <= 105
# -109 <= nums[i] <= 109
# nums is a non-decreasing array.
# -109 <= target <= 109

def search_range(nums, target)
  i = 0
  ans = []
  while i < nums.size
    ans << i if nums[i] == target
    i += 1
  end
  return [-1,-1] if ans.size == 0
  [ans.first, ans.last]
end

search_range([5,7,7,8,8,10],8) == [3,4]
search_range([5,7,7,8,8,10],6) == [-1,-1]
search_range([],0) == [-1,-1]
