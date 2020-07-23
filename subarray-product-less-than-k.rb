# 713. Subarray Product Less Than K
# Your are given an array of positive integers nums.

# Count and print the number of (contiguous) subarrays where the product of all the elements in the subarray is less than k.

# Example 1:
# Input: nums = [10, 5, 2, 6], k = 100
# Output: 8
# Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
# Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
# Note:

# 0 < nums.length <= 50000.
# 0 < nums[i] < 1000.
# 0 <= k < 10^6.

def num_subarray_product_less_than_k(nums, k)
  pa = [1]
  pd = 1
  nums.each do |v|
    pd *= v
    pa << pd
  end

  count = 0
  n = nums.size
  i = 0
  while i < n
    j = i
    while j < n
      count += 1 if pa[j+1]/pa[i] < k
    j += 1
    end
  i+= 1
  end
  count
end
p num_subarray_product_less_than_k([10, 5, 5, 5], 251)

