# 1446. Consecutive Characters

# Given a string s, the power of the string is the maximum length of a non-empty substring that contains only one unique character.

# Return the power of the string.



# Example 1:

# Input: s = "leetcode"
# Output: 2
# Explanation: The substring "ee" is of length 2 with the character 'e' only.
# Example 2:

# Input: s = "abbcccddddeeeeedcba"
# Output: 5
# Explanation: The substring "eeeee" is of length 5 with the character 'e' only.
# Example 3:

# Input: s = "triplepillooooow"
# Output: 5
# Example 4:

# Input: s = "hooraaaaaaaaaaay"
# Output: 11
# Example 5:

# Input: s = "tourist"
# Output: 1


# Constraints:

# 1 <= s.length <= 500
# s contains only lowercase English letters.

def max_power(s)
  new_arr = s.split("")
  arr = []
  count = 1
  i = 0
  while i < new_arr.size
    if s[i] != s[i+1]
      arr << count
      count = 1
    else
      count += 1
    end
  i += 1
  end
  arr.max
end

p max_power("leeetcodee") == 3
p max_power("abbcccddddeeeeedcba") == 5
p max_power("triplepillooooow") == 5
p max_power("hooraaaaaaaaaaay") == 11
p max_power("tourist") == 1

