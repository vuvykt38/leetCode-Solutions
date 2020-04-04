# 3. Longest Substring Without Repeating Characters
# Given a string, find the length of the longest substring without repeating characters.

# Example 1:

# Input: "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
#              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.



def length_of_longest_substring(string)
  array = string.split("")
  n = array.size
  new_array = []
  i = 0
  while i < n
    new_array << array[i,n]
  i += 1
  end
  new_array.map { |array| length_each_array(array)}.max.to_i
end

def length_each_array(arr)
  new_array_1 = []
  arr.each do |i|
    break if new_array_1.include?(i)
    new_array_1 << i
  end
  new_array_1.length
end

p length_of_longest_substring("pwwkew")






