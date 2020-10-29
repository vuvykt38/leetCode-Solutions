# 1624. Largest Substring Between Two Equal Characters

# Given a string s, return the length of the longest substring between two equal characters, excluding the two characters. If there is no such substring return -1.

# A substring is a contiguous sequence of characters within a string.



# Example 1:

# Input: s = "aa"
# Output: 0
# Explanation: The optimal substring here is an empty substring between the two 'a's.
# Example 2:

# Input: s = "abca"
# Output: 2
# Explanation: The optimal substring here is "bc".
# Example 3:

# Input: s = "cbzxy"
# Output: -1
# Explanation: There are no characters that appear twice in s.
# Example 4:

# Input: s = "cabbac"
# Output: 4
# Explanation: The optimal substring here is "abba". Other non-optimal substrings include "bb" and "".

def max_length_between_equal_characters(s)
  s_arr = s.split("")
  n = s_arr.size
  i = 0
  max = -1
  while i < n - 1
    j = n - 1
    while j > i
      # p "i = #{i}, j: #{j}, s_arr[i]: #{s_arr[i]}, s_arr[j]: #{s_arr[j]}"
      if s_arr[i] == s_arr[j]
        # p "i = #{i}, j: #{j}, s_arr[i]: #{s_arr[i]}, s_arr[j]: #{s_arr[j]}, #{s_arr[i+1..j-1].length}"
        s_arr[i+1..j-1].length > max ? max = s_arr[i+1..j-1].length : max = max
      end
    j -= 1
    end
   i += 1
  end
  max
end

p max_length_between_equal_characters("abcb") == 1
p max_length_between_equal_characters("aa") == 0
p max_length_between_equal_characters("cbzxy") == -1
p max_length_between_equal_characters("cabbac") == 4
p max_length_between_equal_characters("mgntdygtxrvxjnwksqhxuxtrv") == 18
