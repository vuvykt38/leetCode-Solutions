# 347. Top K Frequent Elements
# Given a non-empty array of integers, return the k most frequent elements.

# Example 1:

# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]
# Example 2:

# Input: nums = [1], k = 1
# Output: [1]
# Note:

# You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
# Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
# It's guaranteed that the answer is unique, in other words the set of the top k frequent elements is unique.
# You can return the answer in any order.

def top_k_frequent(nums, k)
  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end
  t = h_value.values.sort.last(k)[0]
  ans = []
  h_value.select { |key, val| ans << key if val >= t}
  ans
end

p top_k_frequent([1,1,1,2,2,3], 2) == [1,2]
p top_k_frequent([1,1,1,2,2,3,3,3], 2) == [1,3]
p top_k_frequent([1], 1) == [1]
p top_k_frequent([1,1,1,2,2,3,3,3], 3) == [1,2,3]
