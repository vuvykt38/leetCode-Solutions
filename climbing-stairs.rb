# 1897. Redistribute Characters to Make All Strings Equal
# You are given an array of strings words (0-indexed).

# In one operation, pick two distinct indices i and j, where words[i] is a non-empty string, and move any character from words[i] to any position in words[j].

# Return true if you can make every string in words equal using any number of operations, and false otherwise.



# Example 1:

# Input: words = ["abc","aabc","bc"]
# Output: true
# Explanation: Move the first 'a' in words[1] to the front of words[2],
# to make words[1] = "abc" and words[2] = "abc".
# All the strings are now equal to "abc", so return true.
# Example 2:

# Input: words = ["ab","a"]
# Output: false
# Explanation: It is impossible to make all the strings equal using the operation.


# Constraints:

# 1 <= words.length <= 100
# 1 <= words[i].length <= 100
# words[i] consists of lowercase English letters.

def make_equal(words)
  array_words =  words.join("").split("")
  hash_words = {}
  hash_words.default = 0
  array_words.each do |e|
    hash_words[e] += 1
  end
  hash_words.select { |k,v| return false if v % words.size != 0 }
  true
end

p make_equal(["aabc","aabc","bc"]) == false
p make_equal(["ab","a"]) == false
