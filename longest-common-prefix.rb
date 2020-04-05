# 14. Longest Common Prefix

# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def longest_common_prefix(array)
  return "" if array.size == 0
  shortest_length_string = array.min { |x,y| x.size <=> y.size }
  array.delete(shortest_length_string)
  string_to_array = shortest_length_string.split("")
  new_array = []
  string_to_array.each_with_index do |value, i|
    break unless array.all? { |word| word[i] == value}
    new_array << value
  end
  new_array.join("")
end

p longest_common_prefix(["aca","cba"])



