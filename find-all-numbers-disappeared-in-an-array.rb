# 448. Find All Numbers Disappeared in an Array
# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

# Find all the elements of [1, n] inclusive that do not appear in this array.

# Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

# Example:

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [5,6]

# def find_disappeared_numbers(nums)
#   nums.sort!
#   i = 1
#   n = nums.size + 1
#   count = 0
#   while i < n
#     if !nums.include?(i)
#       nums << i
#       count += 1
#     end
#   i += 1
#   end
#   p nums
#   nums.last(count)
# end

def find_disappeared_numbers(nums)
  n = nums.size

  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end

  p h_value

  new_arr = []
  i = 1
  while i < n + 1
    new_arr << i if h_value[i] < 1
  i += 1
  end
  new_arr
end

# p find_disappeared_numbers([4,3,2,7,8,2,3,1]) == [5,6]
# p find_disappeared_numbers([3,2,7,7,2,3,1,1]) == [4,5,6,8]
# p find_disappeared_numbers([3,2,7,7,2,3,1,1,4]) == [5,6,8,9]
p find_disappeared_numbers([1,1]) == [2]
