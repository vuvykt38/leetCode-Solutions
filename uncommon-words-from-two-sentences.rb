# 884. Uncommon Words from Two Sentences
# We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

# Return a list of all uncommon words.

# You may return the list in any order.



# Example 1:

# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]
# Example 2:

# Input: A = "apple apple", B = "banana"
# Output: ["banana"]


# Note:

# 0 <= A.length <= 200
# 0 <= B.length <= 200
# A and B both contain only spaces and lowercase letters.

def uncommon_from_sentences(a, b)
  ans = []
  a_arr = a.split(" ")
  b_arr = b.split(" ")

  new_arr = a_arr + b_arr

  h_new_arr = {}
  h_new_arr.default =0

  new_arr.each do |e|
    h_new_arr[e] += 1
  end

  h_new_arr.select { |key, val| ans << key if val == 1 }

  ans
end

# p uncommon_from_sentences("this apple is sweet", "this apple is sour") == ["sweet","sour"]
p uncommon_from_sentences("apple apple", "banana") == ["banana"]
