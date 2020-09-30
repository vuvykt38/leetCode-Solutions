# 349. Intersection of Two Arrays
# Given two arrays, write a function to compute their intersection.

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2]
# Example 2:

# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [9,4]
# Note:

# Each element in the result must be unique.
# The result can be in any order.

def intersection(nums1, nums2)
  h_value = {}
  h_value.default = 0
  nums1.each do |e|
    h_value[e] += 1
  end


  new_arr = []
  nums2.each do |e|
    t = new_arr.count(e)
    new_arr << e if (h_value[e] > 0 && t == 0)
  end
  new_arr
end

p intersection([1,2,2,1,2], [2,2,2]).sort == [2].sort
p intersection([4,9,5,4], [9,4,4,9,8,4]).sort == [4,9].sort
p intersection([4,9,5,4], [9,4,9,8,4]).sort == [4,9].sort
