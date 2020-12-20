# 648. Replace Words

# In English, we have a concept called root, which can be followed by some other word to form another longer word - let's call this word successor. For example, when the root "an" is followed by the successor word "other", we can form a new word "another".

# Given a dictionary consisting of many roots and a sentence consisting of words separated by spaces, replace all the successors in the sentence with the root forming it. If a successor can be replaced by more than one root, replace it with the root that has the shortest length.

# Return the sentence after the replacement.



# Example 1:

# Input: dictionary = ["cat","bat","rat"], sentence = "the cattle was rattled by the battery"
# Output: "the cat was rat by the bat"
# Example 2:

# Input: dictionary = ["a","b","c"], sentence = "aadsfasf absbs bbab cadsfafs"
# Output: "a a b c"
# Example 3:

# Input: dictionary = ["a", "aa", "aaa", "aaaa"], sentence = "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa"
# Output: "a a a a a a a a bbb baba a"
# Example 4:

# Input: dictionary = ["catt","cat","bat","rat"], sentence = "the cattle was rattled by the battery"
# Output: "the cat was rat by the bat"
# Example 5:

# Input: dictionary = ["ac","ab"], sentence = "it is abnormal that this solution is accepted"
# Output: "it is ab that this solution is ac"


# Constraints:

# 1 <= dictionary.length <= 1000
# 1 <= dictionary[i].length <= 100
# dictionary[i] consists of only lower-case letters.
# 1 <= sentence.length <= 10^6
# sentence consists of only lower-case letters and spaces.
# The number of words in sentence is in the range [1, 1000]
# The length of each word in sentence is in the range [1, 1000]
# Each two consecutive words in sentence will be separated by exactly one space.
# sentence does not have leading or trailing spaces.

def replace_words(dictionary, sentence)
  dictionary.sort!
  h_value = {}
  h_value.default = 0

  new_arr = []
  sentence_arr = sentence.split(" ")
  i = 0
  while i < sentence_arr.size
    j = 0
    while j < dictionary.size
      # p "#{sentence_arr[i]}, #{dictionary[j]}, #{str_contains_str?(sentence_arr[i], dictionary[j])}"
      if str_contains_str?(sentence_arr[i], dictionary[j])
        h_value[sentence_arr[i]] = dictionary[j]
        break
      end
        h_value[sentence_arr[i]] = sentence_arr[i]
      j += 1
    end
    i += 1
  end

  sentence_arr.each do |e|
    new_arr << h_value[e]
  end
  new_arr.join (" ")
end

def str_contains_str?(str1, str2)
  str1[0..str2.size-1] == str2
end

p replace_words(["cat","bat","rat"], "the cattle was rattled by the battery") == "the cat was rat by the bat"
p replace_words(["a","b","c"], "aadsfasf absbs bbab cadsfafs") == "a a b c"
p replace_words(["a", "aa", "aaa", "aaaa"], "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa") == "a a a a a a a a bbb baba a"
p replace_words(["catt","cat","bat","rat"], "the cattle was rattled by the battery") == "the cat was rat by the bat"
p replace_words(["ac","ab"], "it is abnormal that this solution is accepted") == "it is ab that this solution is ac"
