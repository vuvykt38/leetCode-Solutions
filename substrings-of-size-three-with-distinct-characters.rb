# 1876. Substrings of Size Three with Distinct Characters
# A string is good if there are no repeated characters.

# Given a string s​​​​​, return the number of good substrings of length three in s​​​​​​.

# Note that if there are multiple occurrences of the same substring, every occurrence should be counted.

# A substring is a contiguous sequence of characters in a string.

 

# Example 1:

# Input: s = "xyzzaz"
# Output: 1
# Explanation: There are 4 substrings of size 3: "xyz", "yzz", "zza", and "zaz". 
# The only good substring of length 3 is "xyz".
# Example 2:

# Input: s = "aababcabc"
# Output: 4
# Explanation: There are 7 substrings of size 3: "aab", "aba", "bab", "abc", "bca", "cab", and "abc".
# The good substrings are "abc", "bca", "cab", and "abc".
 

# Constraints:

# 1 <= s.length <= 100
# s​​​​​​ consists of lowercase English letters.

def count_good_substrings(s)
	substrings_arr = []
	s_arr = s.split("")
	s_arr.each_with_index do |e, i|
		substrings_arr << s_arr[i..i+2] if s_arr[i..i+2].size == 3
	end
	substrings_arr
	count = 0
	substrings_arr.each do |e|
		count += 1 if !repeated_characters?(e)
	end
	count
end

def repeated_characters?(s)
	s_hash = {}
	s_hash.default = 0
	s.each do |e|
		s_hash[e] += 1
	end
	s_hash.select { |k, v| return true if v > 1 }
	false
end

p count_good_substrings("xyzzaz") == 1
p count_good_substrings("aababcabc") == 4
