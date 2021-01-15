# 1296. Divide Array in Sets of K Consecutive Numbers

# Given an array of integers nums and a positive integer k, find whether it's possible to divide this array into sets of k consecutive numbers
# Return True if its possible otherwise return False.



# Example 1:

# Input: nums = [1,2,3,3,4,4,5,6], k = 4
# Output: true
# Explanation: Array can be divided into [1,2,3,4] and [3,4,5,6].
# Example 2:

# Input: nums = [3,2,1,2,3,4,3,4,5,9,10,11], k = 3
# Output: true
# Explanation: Array can be divided into [1,2,3] , [2,3,4] , [3,4,5] and [9,10,11].
# Example 3:

# Input: nums = [3,3,2,2,1,1], k = 3
# Output: true
# Example 4:

# Input: nums = [1,2,3,4], k = 3
# Output: false
# Explanation: Each array should be divided in subarrays of size 3.


# Constraints:

# 1 <= nums.length <= 10^5
# 1 <= nums[i] <= 10^9
# 1 <= k <= nums.length
# Note: This question is the same as 846: https://leetcode.com/problems/hand-of-straights/

# def is_possible_divide(nums, k)
#   n = nums.size
#   return false if n % k != 0
#   return false if n == k

#   nums.sort!
#   new_arr = nums.dup
#   ans = []
#   while new_arr.size > 0
#     t = new_arr.uniq.first(k)
#     ans << t.dup
#     new_arr = delete_elements_in(new_arr,t)
#   end

#   i = 0
#   while i < ans.size - 1
#     return false if !consecutive_arr?(ans[i], ans[i+1])
#     return false if !continguous?(ans[i])
#     return false if !continguous?(ans[i+1])
#     i += 1
#   end
#   true
# end



# def delete_elements_in(arr1, arr2)
#   i = 0
#   while i < arr1.size
#     t = arr2.index(arr1[i])
#     if t
#       arr1.delete_at(i)
#       arr2.delete_at(t)
#       i -= 1
#     end
#     i += 1
#   end
#   arr1
# end

# def consecutive_arr?(arr1, arr2)
#   t = arr1.index(arr2.min)
#   return true if t == nil
#   i = t
#   j = 0

#   while i < arr1.size
#     return false if arr1[i] != arr2[j]
#     i += 1
#     j += 1
#   end
#   true
# end

# def continguous?(arr)
#   a = arr.sort
#   (a.first..a.last).to_a == a
# end
# p continguous?([2,5,6])
# p consecutive_arr?([2,5,6], [8,9,10]) == false

def is_possible_divide(nums, k)
  n = nums.size
  return false if n % k != 0
  return false if n == k

  nums.sort!

  ans = [nums[0]]
  result = []
  i = 1
  while nums.size > 0
    # p "i:#{i}, nums:#{nums}, ans: #{ans}"
    return false if i == nums.size && ans.size != k
    ans << nums[i] if nums[i] > nums[i-1]
    if ans.size == k
      result << ans.dup
      nums = delete_elements_in(nums, ans)
      if nums.size == k
        result << nums
        break
      end
      ans = [nums[0]]
      i = 0
    end
    i += 1
  end

  result.each do |e|
    return false if !continguous?(e)
  end
  true
end

def delete_elements_in(arr1, arr2)
  i = 0
  while i < arr1.size
    t = arr2.index(arr1[i])
    if t
      arr1.delete_at(i)
      arr2.delete_at(t)
      i -= 1
    end
    i += 1
  end
  arr1
end

def continguous?(arr)
  a = arr.sort
  (a.first..a.last).to_a == a
end


p is_possible_divide([1,2,3,3,4,4,5,6], 4) == true
p is_possible_divide([1,2,3,3,4,4,5,1], 4) == false
p is_possible_divide([1,2,3,3,3,4,5,1], 4) == false
p is_possible_divide([3,2,1,2,3,4,3,4,5,9,10,11], 3) == true
p is_possible_divide([3,2,1,2,3,4,3,4,5,5,10,11], 3) == false
p is_possible_divide([16,21,26,35], 4) == false
p is_possible_divide([2,5,6,8,9,10], 3) == false
p is_possible_divide([1,1,1,1], 2) == false

p is_possible_divide([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],2) == false

