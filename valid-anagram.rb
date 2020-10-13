# 242. Valid Anagram
# Given two strings s and t , write a function to determine if t is an anagram of s.

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false
# Note:
# You may assume the string contains only lowercase alphabets.

# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

def is_anagram(s, t)
  s_arr = s.split("")
  h_value = {}
  h_value.default = 0
  s_arr.each do |e|
    h_value[e] += 1
  end

  t_arr = t.split("")
  h_t_value = {}
  h_t_value.default = 0
  t_arr.each do |e|
    h_t_value[e] += 1
  end

  m = []

  s_arr.size > t_arr.size ? m = s_arr : m = t_arr
  m.each do |e|
    return false if h_value[e] != h_t_value[e]
  end
  true
end
