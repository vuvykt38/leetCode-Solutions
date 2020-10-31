# 442. Find All Duplicates in an Array
# Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

# Find all the elements that appear twice in this array.

# Could you do it without extra space and in O(n) runtime?

# Example:
# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [2,3]

def find_duplicates(nums)
  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end

  h_value.delete_if {|key, value| value != 2 }
  p h_value.keys
end

find_duplicates([4,3,2,7,8,2,3,1])
