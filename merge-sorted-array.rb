# 88. Merge Sorted Array
# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

# Note:

# The number of elements initialized in nums1 and nums2 are m and n respectively.
# You may assume that nums1 has enough space (size that is equal to m + n) to hold additional elements from nums2.
# Example:

# Input:
# nums1 = [1,2,3,0,0,0], m = 3
# nums2 = [2,5,6],       n = 3

# Output: [1,2,2,3,5,6]

# def merge(nums1, m, nums2, n)
#   new_arr = []
#   new_arr << nums1.first(m)
#   new_arr << nums2
#   new_arr.flatten.sort
# end

def merge(nums1, m, nums2, n)
  nums1.slice!(m..m+n-1)
  p nums1 << nums2
  nums1.flatten!.sort!
end

def merge_arr(arr)
  arr.each do |e|
    e.to_a
  end
end

p merge_arr([1, 2, 3, [2, 5, 6]])
# p merge([1,2,3,0,0,0], 3, [2,5,6], 3) == [1,2,2,3,5,6]
# p merge([1,2,3,1,2,3], 3, [2,5,6], 3) == [1,2,2,3,5,6]
# p merge([4,5,6,7,8], 2, [9,10,11],3) == [4,5,9,10,11]
