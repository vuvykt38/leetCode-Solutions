# 315. Count of Smaller Numbers After Self
# You are given an integer array nums and you have to return a new counts array. The counts array has the property where counts[i] is the number of smaller elements to the right of nums[i].



# Example 1:

# Input: nums = [5,2,6,1]
# Output: [2,1,1,0]
# Explanation:
# To the right of 5 there are 2 smaller elements (2 and 1).
# To the right of 2 there is only 1 smaller element (1).
# To the right of 6 there is 1 smaller element (1).
# To the right of 1 there is 0 smaller element.
# Example 2:

# Input: nums = [-1]
# Output: [0]
# Example 3:

# Input: nums = [-1,-1]
# Output: [0,0]


# Constraints:

# 1 <= nums.length <= 105
# -104 <= nums[i] <= 104

# TLE solution

def count_smaller(nums)
  arr = []
  n = nums.size
  nums.each_with_index do |e, i|
    arr << count_num(e, nums[i+1, n-1])
  end
  arr
end

def count_num(nums, array)
  count = 0
  array.each do |e|
    count += 1 if e < nums
  end
  count
end

# p count_num(1, [])

p count_smaller([5,2,6,1]) == [2,1,1,0]
