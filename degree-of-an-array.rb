# 697. Degree of an Array
# Given a non-empty array of non-negative integers nums, the degree of this array is defined as the maximum frequency of any one of its elements.

# Your task is to find the smallest possible length of a (contiguous) subarray of nums, that has the same degree as nums.



# Example 1:

# Input: nums = [1,2,2,3,1]
# Output: 2
# Explanation:
# The input array has a degree of 2 because both elements 1 and 2 appear twice.
# Of the subarrays that have the same degree:
# [1, 2, 2, 3, 1], [1, 2, 2, 3], [2, 2, 3, 1], [1, 2, 2], [2, 2, 3], [2, 2]
# The shortest length is 2. So return 2.
# Example 2:

# Input: nums = [1,2,2,3,1,4,2]
# Output: 6
# Explanation:
# The degree is 3 because the element 2 is repeated 3 times.
# So [2,2,3,1,4,2] is the shortest subarray, therefore returning 6.


# Constraints:

# nums.length will be between 1 and 50,000.
# nums[i] will be an integer between 0 and 49,999.

# //Solution 1

def find_shortest_sub_array(nums)
  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end

  max_value = []
  t = h_value.values.max
  h_value.select { |key, val| max_value << key if val == t }

  ans = nums.size + 1
  i = 0
  max_value.each do |e|
    while i < nums.size
      break i if nums[i] == e
    i += 1
    end

    j = nums.size - 1
    while j > 0
      break j if nums[j] == e
    j -= 1
    end
    ans = [j - i + 1, ans].min
  end
  ans
end

# Solution 2
def find_shortest_sub_array(nums)
  h = {}
  h.default = 0
  h_ij = {}
  h_ij.default = { i: nil, j: nil }

  max = 0
  i = 0
  while i < nums.size
    v = nums[i]
    if h[v] == 0
      h_ij[v] = { i: i, j: nil }
    else
      h_ij[v] = { i: h_ij[v][:i], j: i }
    end
    h[v] += 1
    max = h[v] if h[v] > max

    i += 1
  end

  return 1 if max == 1

  ans = nums.size + 1
  h_ij.each do |v, ij|
    if h[v] == max
      len = ij[:j] - ij[:i] + 1
      ans = len if len < ans
    end
  end

  ans
end

p find_shortest_sub_array([1,2,2,3,1]) == 2
p find_shortest_sub_array([1,2,2,3,1,4,2,3]) == 6
p find_shortest_sub_array([1,2,2,3,1,4,2,3]) == 6
