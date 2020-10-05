# 1078. Occurrences After Bigram
# Given words first and second, consider occurrences in some text of the form "first second third", where second comes immediately after first, and third comes immediately after second.

# For each such occurrence, add "third" to the answer, and return the answer.



# Example 1:

# Input: text = "alice is a good girl she is a good student", first = "a", second = "good"
# Output: ["girl","student"]
# Example 2:

# Input: text = "we will we will rock you", first = "we", second = "will"
# Output: ["we","rock"]


# Note:

# 1 <= text.length <= 1000
# text consists of space separated words, where each word consists of lowercase English letters.
# 1 <= first.length, second.length <= 10
# first and second consist of lowercase English letters.

def find_ocurrences(text, first, second)
  text_arr = text.split(" ")
  h = {}
  h.default = 0
  text_arr.each_with_index do |e, i|
    h[i] = e
  end

  new_arr = []
  i = 1
  while i < text_arr.size - 1
    new_arr << h[i+1] if (h[i] == second) && (h[i-1] == first)
  i += 1
  end
  new_arr

end

p find_ocurrences("alice is a good girl she is a good student", "a", "good") == ["girl","student"]
p find_ocurrences("we will we will rock you", "we", "will") == ["we","rock"]
p find_ocurrences("alice is aa good girl she is a good student", "a", "good") == ["student"]
p find_ocurrences("ypkk lnlqhmaohv lnlqhmaohv lnlqhmaohv ypkk ypkk ypkk ypkk ypkk ypkk lnlqhmaohv lnlqhmaohv lnlqhmaohv lnlqhmaohv ypkk ypkk ypkk lnlqhmaohv lnlqhmaohv ypkk", "lnlqhmaohv", "ypkk") == ["ypkk","ypkk"]







