# 219. Contains Duplicate II
# Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

# Example 1:

# Input: nums = [1,2,3,1], k = 3
# Output: true
# Example 2:

# Input: nums = [1,0,1,1], k = 1
# Output: true
# Example 3:

# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false

def contains_nearby_duplicate(nums, k)
  h1 = {}
  h2 = {}
  h1.default = 0
  h2.default = 0
  nums.each_with_index do |val, i|
    h1[i] = val
    h2[val] += 1
  end

  repeated_element = []
  h2.select {|k,v| repeated_element << k if v > 1}

  new_arr_1 = []
  repeated_element.each do |e|
    new_arr = []
    h1.each do |key, val|
      # p "#{val == e}, #{key}"
      new_arr << key if val == e
    end
    new_arr_1 << new_arr
  end

  p new_arr_1

  new_arr_1.each do |e|
    return true if (e[1]-e[0]).abs == k
  end
  false
end

p contains_nearby_duplicate([1,0,1,1], 1) == true
