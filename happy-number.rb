# Happy Number
# Write an algorithm to determine if a number n is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Return True if n is a happy number, and False if not.

# Example:

# Input: 19
# Output: true
# Explanation:
# 12 + 92 = 82
# 82 + 22 = 68
# 62 + 82 = 100
# 12 + 02 + 02 = 1

# def is_happy(n)
#   return true if n == 1

# end

def sum_square_2(seen, n)
  new_array = []
  n.to_s.split("").each do |i|
    new_array << square(i)
  end
  new_nums = new_array.sum
  return false if seen.include?(new_nums)
  return true if new_nums == 1
  seen << new_nums
  sum_square_2(seen, new_nums)
end

def square(nums)
  nums.to_i * nums.to_i
end

def sum_square(n)
  sum_square_2([], n)
end
p sum_square(-12324324)
