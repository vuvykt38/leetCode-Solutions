# 169. Majority Element
# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.

# Example 1:

# Input: [3,2,3]
# Output: 3
# Example 2:

# Input: [2,2,1,1,1,2,2]
# Output: 2

def majority_element(nums)
  n = nums.size
  hash = {}
  hash.default = 0
  nums.each do |e|
    hash[e] += 1
  end
  # hash.each { |k, v| puts k if v == hash.values.max }

  max = 1
  hash.each do |key, value|
    # p "key: #{key}, val:#{value}"
    value > max ? max = value : max
  end

  hash.each do |key, value|
    return key if value == max
  end
end

majority_element([3,2,3])
majority_element([6,5,5])
