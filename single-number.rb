# Single Number
# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

# Note:

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Example 1:

# Input: [2,2,1]
# Output: 1
# Example 2:

# Input: [4,1,2,1,2]
# Output: 4

# //Approach 1
# def single_number(nums)
#   return nums.first if nums.size == 1
#   nums.each_with_index do |val, i|
#     new_array = nums.dup
#     new_array.slice!(i)
#     return val unless new_array.include?(val)
#   end
# end

# //Approach 2: improving run time

def single_number(nums)
  i = 0
  nums.each {|num| i = i ^ num}
  i
end

p single_number([2,2,1])



