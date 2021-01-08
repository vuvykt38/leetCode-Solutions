# 1002. Find Common Characters
# Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

# You may return the answer in any order.



# Example 1:

# Input: ["bella","label","roller"]
# Output: ["e","l","l"]
# Example 2:

# Input: ["cool","lock","cook"]
# Output: ["c","o"]


# Note:

# 1 <= A.length <= 100
# 1 <= A[i].length <= 100
# A[i][j] is a lowercase letter

def common_chars(a)
  common_chars = a[0]
  ans = []
  i = 1
  while i < a.size
    common_chars = str_with_str(common_chars, a[i])

    i += 1
  end
  common_chars.split("")
end

def str_with_str(str1, str2)
  ans =[]

  h_value_1 = {}
  h_value_1.default = 0
  str1.split("").each do |e|
    h_value_1[e] += 1
  end

  h_value_2 = {}
  h_value_2.default = 0
  str2.split("").each do |e|
    h_value_2[e] += 1
  end

  str1.split("").uniq.each do |e|
    h_value_1[e] <= h_value_2[e] ? ans << e * h_value_1[e] : ans << e * h_value_2[e]
  end
  ans.join("")
end
# str_with_str("bella", "label")

p common_chars(["bellla","label","roller"]) == ["e","l","l"]
p common_chars(["cool","lock","cook"]) == ["c","o"]
