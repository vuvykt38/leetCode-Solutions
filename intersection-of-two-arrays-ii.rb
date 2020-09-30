# 350. Intersection of Two Arrays II
# Given two arrays, write a function to compute their intersection.

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2,2]
# Example 2:

# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [4,9]
# Note:

# Each element in the result should appear as many times as it shows in both arrays.
# The result can be in any order.
# Follow up:

# What if the given array is already sorted? How would you optimize your algorithm?
# What if nums1's size is small compared to nums2's size? Which algorithm is better?
# What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

def intersect(nums1, nums2)
  h_value = {}
  h_value.default = 0
  nums1.each do |e|
    h_value[e] += 1
  end


  new_arr = []
  nums2.each do |e|
    t = new_arr.count(e)
    new_arr << e if h_value[e] > t
  end
  new_arr
end

p intersect([1,2,2,1], [2,2]).sort == [2,2].sort
p intersect([4,9,5], [9,4,9,8,4]).sort == [4,9].sort

