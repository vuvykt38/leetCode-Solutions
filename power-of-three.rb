# 326. Power of Three
# Given an integer n, return true if it is a power of three. Otherwise, return false.

# An integer n is a power of three, if there exists an integer x such that n == 3x.



# Example 1:

# Input: n = 27
# Output: true
# Example 2:

# Input: n = 0
# Output: false
# Example 3:

# Input: n = 9
# Output: true
# Example 4:

# Input: n = 45
# Output: false


# Constraints:

# -231 <= n <= 231 - 1

def is_power_of_three(n)
  return false if power_of_three(n).last != n
  true
end

def power_of_three(n)
  arr = []
  i = 0
  while 3**i <= n
    arr << 3**i
    i += 1
  end
  arr
end

# p is_power_of_three(45) == false
# p is_power_of_three(27) == true
# p is_power_of_three(0) == false
# p is_power_of_three(9) == true
# p is_power_of_three(81) == true
p is_power_of_three(1) == true
