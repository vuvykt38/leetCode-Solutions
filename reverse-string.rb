# 344. Reverse String
# Write a function that reverses a string. The input string is given as an array of characters char[].

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# You may assume all the characters consist of printable ascii characters.



# Example 1:

# Input: ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# Example 2:

# Input: ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]

def reverse_string(s)
  # find middle element
  n = s.size
  mid = s[n/2]

  i = 0
  j = n - 1

  # i = 0, j = n - 1, swap i << j while i < j
  while i < j
    p "s[i]: #{s[i]}, s[j]: #{s[j]}"
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
  i += 1
  j -=1
  end
  p s
end

reverse_string(["h","e","l","l","o"])
reverse_string(["H","a","n","n","a","h"])
reverse_string(["s","u","n","n","y"])
reverse_string(["l","o","n","g"])
reverse_string(["q","u","a","n","g"])
