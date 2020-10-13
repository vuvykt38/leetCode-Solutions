# 1160. Find Words That Can Be Formed by Characters
# You are given an array of strings words and a string chars.

# A string is good if it can be formed by characters from chars (each character can only be used once).

# Return the sum of lengths of all good strings in words.



# Example 1:

# Input: words = ["cat","bt","hat","tree"], chars = "atach"
# Output: 6
# Explanation:
# The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.
# Example 2:

# Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
# Output: 10
# Explanation:
# The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.


# Note:

# 1 <= words.length <= 1000
# 1 <= words[i].length, chars.length <= 100
# All strings contain lowercase English letters only.

def count_characters(words, chars)
  count = 0
  words.each do |e|
    count += e.size if string_exist?(e, chars)
  end
  count
end

def string_exist?(string, chars)
  h_char = {}
  h_char.default = 0
  chars.split("").each do |e|
    h_char[e] += 1
  end

  h_str = {}
  h_str.default = 0
  string.split("").each do |e|
    h_str[e] += 1
  end

  string.split("").each do |e|
    return false if !(h_char[e] >= h_str[e])
  end
  true
end

# p string_exist?("caaat", "atach")
p count_characters(["cat"], "atach") == 3
p count_characters(["hello","world","leetcode"], "welldonehoneyr") == 10
