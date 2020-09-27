# 387. First Unique Character in a String
# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# Examples:

# s = "leetcode"
# return 0.

# s = "loveleetcode"
# return 2.


# Note: You may assume the string contains only lowercase English letters.

def first_uniq_char(s)
  new_arr = s.split("")
  hash = {}
  hash.default = 0
  new_arr.each do |e|
    hash[e] += 1
  end

  ans = nil
  new_arr.each_with_index do |v, i|
    return i if hash[v] == 1
  end

  -1
end

p first_uniq_char("leetcode")
p first_uniq_char("loveleetcode")
p first_uniq_char("vutuongvy")
p first_uniq_char("llttuu")

