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

# 12/14/2021 22:47: TLE  

# def contains_nearby_duplicate(nums, k)
#   i = 0
#   while i < nums.size - 1
#     j = i + 1
#     while j < nums.size
#       p "#{nums[i]}, #{nums[j]}, i:#{i}, j:#{j}, #{(j - i)}, k:#{k} #{nums[i] == nums[j] && (j - i) <= k }"
#       return true if nums[i] == nums[j] && (j - i) <= k 
#       j += 1
#     end
#     i += 1
#   end
#   false
# end

def contains_nearby_duplicate(nums, k)
  nums_hash = {}
  nums_hash.default = nil
  nums.each_with_index do |e, i|
    if nums_hash[e] == nil
      nums_hash[e] = i
    else
      p "i: #{i}, #{nums_hash[e]}"
      return true if (i - nums_hash[e]) <= k
      nums_hash[e] = i 
    end
  end
  false
end

p contains_nearby_duplicate([1,0,1,1], 1) == true
# p contains_nearby_duplicate([1,2,3,1,2,3], 2) == false
# p contains_nearby_duplicate([1,2,3,1], 3) == true
# p contains_nearby_duplicate([1,2,3,1,2,3], 2) == false
