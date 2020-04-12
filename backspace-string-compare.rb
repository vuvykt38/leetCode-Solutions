# Backspace String Compare
# Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

# Example 1:

# Input: S = "ab#c", T = "ad#c"
# Output: true
# Explanation: Both S and T become "ac".
# Example 2:

# Input: S = "ab##", T = "c#d#"
# Output: true
# Explanation: Both S and T become "".
# Example 3:

# Input: S = "a##c", T = "#a#c"
# Output: true
# Explanation: Both S and T become "c".
# Example 4:

# Input: S = "a#c", T = "b"
# Output: false
# Explanation: S becomes "c" while T becomes "b".
# Note:

# 1 <= S.length <= 200
# 1 <= T.length <= 200
# S and T only contain lowercase letters and '#' characters.
# Follow up:

# Can you solve it in O(N) time and O(1) space?
def backspace_compare(s, t)
  str_after_backspace(s) == str_after_backspace(t)
end


# def str_after_backspace (string)
#   result = []
#   string.each_char do |val|
#     if val == "#"
#       result.pop
#     else
#       result << val
#     end
#   end

#   result
# end


def str_after_backspace (string)
  last_index = string.size - 1
  backspace_count = 0
  while(last_index >= 0) do
    if string[last_index] == '#'
      backspace_count += 1
      string.slice!(last_index)
    else
      if backspace_count > 0
        backspace_count -= 1
        string.slice!(last_index)
      end
    end

    last_index -= 1
  end
  string
end

p backspace_compare("a##c", "#a#c") == true
p backspace_compare("ab#c", "ad#c")  == true
p backspace_compare("a##c", "#a#c")  == true
p backspace_compare("a#c", "b") == false
p backspace_compare("bxj##tw", "bxo#j##tw")  == true

# 'a##c'
# 'c##a'
