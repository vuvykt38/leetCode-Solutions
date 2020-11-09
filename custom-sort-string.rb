# 791. Custom Sort String
# S and T are strings composed of lowercase letters. In S, no letter occurs more than once.

# S was sorted in some custom order previously. We want to permute the characters of T so that they match the order that S was sorted. More specifically, if x occurs before y in S, then x should occur before y in the returned string.

# Return any permutation of T (as a string) that satisfies this property.

# Example :
# Input:
# S = "cba"
# T = "abcd"
# Output: "cbad"
# Explanation:
# "a", "b", "c" appear in S, so the order of "a", "b", "c" should be "c", "b", and "a".
# Since "d" does not appear in S, it can be at any position in T. "dcba", "cdba", "cbda" are also valid outputs.


# Note:

# S has length at most 26, and no character is repeated in S.
# T has length at most 200.
# S and T consist of lowercase letters only.

def custom_sort_string(s, t)
  t_arr = t.split("")
  h_value = {}
  h_value.default = 0
  t_arr.each do |e|
    h_value[e] += 1
  end
  ans = []
  s.split("").each do |e|
    ans << e * h_value[e] if h_value[e] > 0
  end
  uncommon_char = t_arr - ans.join().split("")
  ans << uncommon_char
  ans.join("")
end

p custom_sort_string("cba", "abbcd") == "cbbad"
p custom_sort_string("cba", "abbcd") == "cbbad"
