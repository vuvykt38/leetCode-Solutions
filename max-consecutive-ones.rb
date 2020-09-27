# 485. Max Consecutive Ones
# Given a binary array, find the maximum number of consecutive 1s in this array.

# Example 1:
# Input: [1,1,0,1,1,1]
# Output: 3
# Explanation: The first two digits or the last three digits are consecutive 1s.
#     The maximum number of consecutive 1s is 3.
# Note:

# The input array will only contain 0 and 1.
# The length of input array is a positive integer and will not exceed 10,000

# def find_max_consecutive_ones(nums)
#   count = 0
#   count_arr = []
#   nums.each do |e|
#     e == 1 ? count += 1 : count
#     count_arr << count
#     if e == 0
#       count = 0
#     end
#   end
#   count_arr.max
# end

# p find_max_consecutive_ones([1,1,0,1,1,1])
# p find_max_consecutive_ones([0,1,1,0,1])
# p find_max_consecutive_ones([0,1,0,0,1])
# p find_max_consecutive_ones([0,1,0,0,0,1,1,1])
# p find_max_consecutive_ones([1,1,1,0,0,1,1,1])

def check_perfect_number(num)
  return false if num == 0
  i = 1
  arr = []
  while i < num/2 + 1
    num % i == 0 ? arr << i : arr
    arr
  i += 1
  end
  arr
  arr.sum == num
end

p check_perfect_number(28)
p check_perfect_number(100)
p check_perfect_number(0)
