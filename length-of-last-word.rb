# 58. Length of Last Word

# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.

# If the last word does not exist, return 0.

# Note: A word is defined as a maximal substring consisting of non-space characters only.

# Example:

# Input: "Hello World"
# Output: 5

def length_of_last_word(s)
  new_arr = s.split(" ")
  new_arr.size > 0 ? new_arr.last.length : 0
end
p length_of_last_word(" ")
