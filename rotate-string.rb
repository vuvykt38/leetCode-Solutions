# 796. Rotate String
# We are given two strings, A and B.

# A shift on A consists of taking string A and moving the leftmost character to the rightmost position. For example, if A = 'abcde', then it will be 'bcdea' after one shift on A. Return True if and only if A can become B after some number of shifts on A.

# Example 1:
# Input: A = 'abcde', B = 'cdeab'
# Output: true

# Example 2:
# Input: A = 'abcde', B = 'abced'
# Output: false
# Note:

# A and B will have length at most 100.

def rotate_string(a, b)
  return true if a == b
  a_arr = a.split("")
  n = a_arr.size

  i = 0
  while i < n
    a_arr << a_arr.slice!(0)
    return true if a_arr.join == b
    i += 1
  end
  false
end

# p rotate_string('abcde', 'cdeab') == true
# p rotate_string('abcde', 'abced') == false
p rotate_string('acb', 'bc') == false
