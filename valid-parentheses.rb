# 20. Valid Parentheses
# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Note that an empty string is also considered valid.

# Example 1:

# Input: "()"
# Output: true
# Example 2:

# Input: "()[]{}"
# Output: true
# Example 3:

# Input: "(]"
# Output: false
# Example 4:

# Input: "([)]"
# Output: false
# Example 5:

# Input: "{[]}"
# Output: true

def is_valid(s)
  arr = []
  s.split("").each do |e|
    if is_open?(e)
      arr << e
    else
      return false if arr.last != open_of(e)
      arr.pop
    end
  end

  arr.empty?
end

def is_open?(s)
  ["(", "[", "{"].include?(s)
end

def open_of(close)
  h = {
    ")" => "(",
    "}" => "{",
    "]" => "["
  }

  h[close]
end

p is_valid("[()]")
p is_valid("([")
p is_valid("")
p is_valid("([]")

