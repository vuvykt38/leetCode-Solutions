# 953. Verifying an Alien Dictionary
# In an alien language, surprisingly they also use english lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.

# Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographicaly in this alien language.



# Example 1:

# Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
# Output: true
# Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.
# Example 2:

# Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
# Output: false
# Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.
# Example 3:

# Input: words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"
# Output: false
# Explanation: The first three characters "app" match, and the second string is shorter (in size.) According to lexicographical rules "apple" > "app", because 'l' > '∅', where '∅' is defined as the blank character which is less than any other character (More info).


# Constraints:

# 1 <= words.length <= 100
# 1 <= words[i].length <= 20
# order.length == 26
# All characters in words[i] and order are English lowercase letters.

def is_alien_sorted(words, order)
  arr_order = order.split("")

  h_order = {}
  h_order.default = 0
  for i in 0..arr_order.size - 1
    h_order[arr_order[i]] = i + 1
  end

  i = 0
  while i < words.size - 1
    for j in 0..words[i].size
      break if h_order[words[i][j]] < h_order[words[i+1][j]]
      return false if h_order[words[i][j]] > h_order[words[i+1][j]]
      if h_order[words[i][j]] == h_order[words[i+1][j]]
        return false if (h_order[words[i][j+1]] > h_order[words[i+1][j+1]]) && (words[i].size != words[i+1].size)
      end
    end
    i += 1
  end
  true
end

p is_alien_sorted(["hello","leetcode"], "hlabcdefgijkmnopqrstuvwxyz") == true
p is_alien_sorted(["word","world","row"], "worldabcefghijkmnpqstuvxyz") == false
p is_alien_sorted(["apple","app"], "abcdefghijklmnopqrstuvwxyz") == false
p is_alien_sorted(["aa","a"], "abqwertyuioplkjhgfdszxcvnm") == false
p is_alien_sorted(["hello","hello"], "abcdefghijklmnopqrstuvwxyz") == true
p is_alien_sorted(["helli","hello"], "abcdefghijklmnopqrstuvwxyz") == true
p is_alien_sorted(["hell","hella"], "abcdefghijklmnopqrstuvwxyz") == true
