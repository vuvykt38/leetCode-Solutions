# 643. Maximum Average Subarray I
# Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.

# Example 1:

# Input: [1,12,-5,-6,50,3], k = 4
# Output: 12.75
# Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75


# Note:

# 1 <= k <= n <= 30,000.
# Elements of the given array will be in the range [-10,000, 10,000].

def find_max_average(nums, k)
  n = nums.size
  i = 0
  sum_of_k = nums.first(k).sum
  while i < n - k + 1
    nums[i..k+i-1].sum > sum_of_k ? sum_of_k = nums[i..k+i-1].sum : sum_of_k
  i += 1
  end
  sum_of_k/k.to_f
end

p find_max_average([1,12,-5,-6,50,3], 4) == 12.75
p find_max_average([1,2,3], 2) == 2.5
p find_max_average([-1], 1) == -1

