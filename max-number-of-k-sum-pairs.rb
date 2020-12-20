# 1679. Max Number of K-Sum Pairs

# You are given an integer array nums and an integer k.

# In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

# Return the maximum number of operations you can perform on the array.



# Example 1:

# Input: nums = [1,2,3,4], k = 5
# Output: 2
# Explanation: Starting with nums = [1,2,3,4]:
# - Remove numbers 1 and 4, then nums = [2,3]
# - Remove numbers 2 and 3, then nums = []
# There are no more pairs that sum up to 5, hence a total of 2 operations.
# Example 2:

# Input: nums = [3,1,3,4,3], k = 6
# Output: 1
# Explanation: Starting with nums = [3,1,3,4,3]:
# - Remove the first two 3's, then nums = [1,4,3]
# There are no more pairs that sum up to 6, hence a total of 1 operation.


# Constraints:

# 1 <= nums.length <= 105
# 1 <= nums[i] <= 109
# 1 <= k <= 109

def max_operations(nums, k)
  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end
  p h_value

  count = 0
  nums.each do |e|
    t = k - e
    if k - e == e && h_value[t] >= 2
      h_value[t] -= 2
      count += 1
      # p "e: #{e}, t: #{t}, #{h_value}"
    elsif k - e != e && h_value[t] > 0 && h_value[e] > 0
      h_value[t] -= 1
      h_value[e] -= 1
      count += 1
      p "e: #{e}, t: #{t}, #{h_value}"
    end
  end
  p count
end

# p max_operations([1,2,3,4], 5) == 2
# p max_operations([3,1,3,4,3], 6) == 1
p max_operations([2,5,4,4,1,3,4,4,1,4,4,1,2,1,2,2,3,2,4,2],3) == 4

