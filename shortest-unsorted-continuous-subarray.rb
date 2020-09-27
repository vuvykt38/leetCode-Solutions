# 581. Shortest Unsorted Continuous Subarray
# Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.

# You need to find the shortest such subarray and output its length.

# Example 1:
# Input: [2, 6, 4, 8, 10, 9, 15]
# Output: 5
# Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
# Note:
# Then length of the input array is in range [1, 10,000].
# The input array may contain duplicates, so ascending order here means <=.

def find_unsorted_subarray(nums)
  new_arr = nums.sort
  ans = []
  return 0 if new_arr == nums
  nums.each_with_index do |e, i|
    if e != new_arr[i]
      ans << i
    end
  end
  ans.last - ans.first + 1
end

# find_unsorted_subarray([2, 6, 4, 8, 10, 9, 15])
find_unsorted_subarray([5,4,3,2,1])
find_unsorted_subarray([1,2,3,4])
