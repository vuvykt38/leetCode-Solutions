# 532. K-diff Pairs in an Array
# Given an array of integers and an integer k, you need to find the number of unique k-diff pairs in the array. Here a k-diff pair is defined as an integer pair (i, j), where i and j are both numbers in the array and their absolute difference is k.

# Example 1:
# Input: [3, 1, 4, 1, 5], k = 2
# Output: 2
# Explanation: There are two 2-diff pairs in the array, (1, 3) and (3, 5).
# Although we have two 1s in the input, we should only return the number of unique pairs.
# Example 2:
# Input:[1, 2, 3, 4, 5], k = 1
# Output: 4
# Explanation: There are four 1-diff pairs in the array, (1, 2), (2, 3), (3, 4) and (4, 5).
# Example 3:
# Input: [1, 3, 1, 5, 4], k = 0
# Output: 1
# Explanation: There is one 0-diff pair in the array, (1, 1).
# Note:
# The pairs (i, j) and (j, i) count as the same pair.
# The length of the array won't exceed 10,000.
# All the integers in the given input belong to the range: [-1e7, 1e7].


# def find_pairs(nums, k)
#   n = nums.size
#   i = 0
#   new_arr = []
#   while i < n
#     j = i + 1
#     while j < n
#       # p "nums[i]: #{nums[i]}, nums[j]: #{nums[j]}, #{(nums[i] - nums[j]).abs}"
#       if (nums[i] - nums[j]).abs == k
#         new_arr << [nums[i],nums[j]]
#       end
#     j += 1
#     end
#   i += 1
#   end
#   new_arr_1 = []
#   new_arr.each do |e|
#     new_arr_1 << e.sort
#   end
#   new_arr_1.uniq.size
# end

# def find_pairs(nums, k)
#   hash = {}
#   hash.default = 0
#   new_arr = []
#   nums.each do |e|
#     hash[e] += 1
#   end
#   new_arr_1 = []
#   nums.each do |e|
#     e > k ? a = (e - k).abs : a = (e + k).abs
#     # p "e: #{e}, a: #{a}, #{hash[a]}"
#     if (hash[a] > 0 && e!=a) || (hash[a] > 2)
#       new_arr_1 << [e,a]
#     end
#   end
#   new_arr_1.each do |e|
#     e.sort!
#   end
#   new_arr_1.uniq.size
# end

def find_pairs(nums, k)
  return 0 if k < 0
  h = {}
  h.default = 0
  nums.each do |e|
    h[e] += 1
  end
  new_arr = []
  nums.each do |e|
    t = -(k - e)
    if (h[t] > 1) || (h[t] == 1 && e != t)
      new_arr << [e,t]
    end
  end
  new_arr.uniq.size
end


p find_pairs([3, 1, 4, 1, 5], 2) == 2
p find_pairs([1, 2, 3, 4, 5], 1) == 4
p find_pairs([1, 3, 1, 5, 4], 0) == 1
p find_pairs([], 0) == 0
p find_pairs([3,1,4,1,5], 0) == 1
p find_pairs([1,3,1,5,4], 0) == 1
p find_pairs([1,2,3,4,5], -1) == 0
p find_pairs([-1,-2,-3], 1) == 2
p find_pairs([-1,0,0,1,0,0,-1], 1) == 2




