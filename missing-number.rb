# 268. Missing Number
# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

# Example 1:

# Input: [3,0,1]
# Output: 2
# Example 2:

# Input: [9,6,4,2,3,5,7,0,1]
# Output: 8
# Note:
# Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?

def missing_number(nums)
  nums.sort!
  i = 0
  while i <=nums.size
    return i if nums[i] != i
  i += 1
  end
end

p missing_number([3,0,1]) == 2
p missing_number([0,1]) == 2
p missing_number([9,6,4,2,3,5,7,0,1]) == 8
p missing_number([0]) == 1
p missing_number([1,2,3,4]) == 0
