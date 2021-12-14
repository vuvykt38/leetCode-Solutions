# 205. Isomorphic Strings
# Given two strings s and t, determine if they are isomorphic.

# Two strings s and t are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

 

# Example 1:

# Input: s = "egg", t = "add"
# Output: true
# Example 2:

# Input: s = "foo", t = "bar"
# Output: false
# Example 3:

# Input: s = "paper", t = "title"
# Output: true
 

# Constraints:

# 1 <= s.length <= 5 * 104
# t.length == s.length
# s and t consist of any valid ascii character.

def is_isomorphic(s, t)
	from_string_to_arr(s) == from_string_to_arr(t)
end

def from_string_to_arr(s)
	s_arr = s.split("").uniq
	s_hash = {}
	s_hash.default = 0
	s_arr.each_with_index do |e, i|
		s_hash[e] += i
	end
	s_hash
	first_result = []
	s.split("").each do |e|
		first_result << s_hash[e]
	end
	first_result
end

p is_isomorphic("paper", "title") == true
p is_isomorphic("foo", "bar") == false
