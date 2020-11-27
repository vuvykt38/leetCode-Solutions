# 1451. Rearrange Words in a Sentence
# Given a sentence text (A sentence is a string of space-separated words) in the following format:

# First letter is in upper case.
# Each word in text are separated by a single space.
# Your task is to rearrange the words in text such that all words are rearranged in an increasing order of their lengths. If two words have the same length, arrange them in their original order.

# Return the new text following the format shown above.



# Example 1:

# Input: text = "Leetcode is cool"
# Output: "Is cool leetcode"
# Explanation: There are 3 words, "Leetcode" of length 8, "is" of length 2 and "cool" of length 4.
# Output is ordered by length and the new first word starts with capital letter.
# Example 2:

# Input: text = "Keep calm and code on"
# Output: "On and keep calm code"
# Explanation: Output is ordered as follows:
# "On" 2 letters.
# "and" 3 letters.
# "keep" 4 letters in case of tie order by position in original text.
# "calm" 4 letters.
# "code" 4 letters.
# Example 3:

# Input: text = "To be or not to be"
# Output: "To be or to be not"

# def arrange_words(text)

#   h_value = {}
#   h_value.default = 0
#   text.split(" ").each do |e|
#     h_value[e] = e.size
#   end
#   ans = []
#   new_arr = h_value.sort_by { |key, val| val}
#   p h_value
#   new_arr.each do |e|
#     ans << e[0]
#   end
#   p ans.join(" ").capitalize

# end

def arrange_words(text)
  text_arr = text.split(" ").sort_by(&:length)
  p text_arr.join(" ").capitalize()
end

p arrange_words("Leetcode is cool") == "Is cool leetcode"
p arrange_words("Keep calm and code on") == "On and keep calm code"
p arrange_words("To be or not to be") == "To be or to be not"

