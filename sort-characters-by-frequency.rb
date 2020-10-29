# 451. Sort Characters By Frequency
# Given a string, sort it in decreasing order based on the frequency of characters.

# Example 1:

# Input:
# "tree"

# Output:
# "eert"

# Explanation:
# 'e' appears twice while 'r' and 't' both appear once.
# So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
# Example 2:

# Input:
# "cccaaa"

# Output:
# "cccaaa"

# Explanation:
# Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
# Note that "cacaca" is incorrect, as the same characters must be together.
# Example 3:

# Input:
# "Aabb"

# Output:
# "bbAa"

# Explanation:
# "bbaA" is also a valid answer, but "Aabb" is incorrect.
# Note that 'A' and 'a' are treated as two different characters.

def frequency_sort(s)
  s_arr = s.split("")
  h_value = {}
  h_value.default = 0
  s_arr.each do |e|
    h_value[e] +=1
  end

  new_arr = h_value.sort_by {|k, v| v}.reverse
  ans = []
  new_arr.map { |e| ans << e[0]*e[1]}
  ans.join("")
end

# frequency_sort("Aabb")
frequency_sort("tree") == "eert"
