# 49. Group Anagrams
# Given an array of strings, group anagrams together.

# Example:

# Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
# Output:
# [
#   ["ate","eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]
# Note:

# All inputs will be in lowercase.
# The order of your output does not matter.
# def group_anagrams(strs)
#   strs = strs.map { |e| e.downcase }
#   last_result = []
#   while strs.size > 0
#   new_arr = strs[1..-1]
#   last_result << result = get_anagram(strs[0], new_arr = strs[1..-1])
#   strs -= result
#   end
#   last_result
# end

# def get_anagram(str, arr)
#   result = [str]
#   arr.each do |i|
#     same_string?(i, str) ? result << i : result
#   end
#   result
# end

# def same_string?(str1, str2)
#   return false unless str1.size == str2.size
#   str1.chars.sort == str2.chars.sort
# end

def group_anagrams(strs)
  strs.group_by { |s| s.chars.sort }.values
end

p group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
