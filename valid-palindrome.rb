# 125. Valid Palindrome
# Easy

# 1679

# 3462

# Add to List

# Share
# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# Note: For the purpose of this problem, we define empty string as valid palindrome.

# Example 1:

# Input: "A man, a plan, a canal: Panama"
# Output: true
# Example 2:

# Input: "race a car"
# Output: false


# Constraints:

# s consists only of printable ASCII characters.

def is_palindrome(s)
  string_arr = s.downcase.split(" ").join("").split("")
  alphanumeric = []
  string_arr.each do |e|
    alphanumeric << e if validate_check(e)
  end

  ans = alphanumeric.reverse
  ans == alphanumeric
end

def validate_check(s)
  alphanumeric_characters = ("a".."z").to_a + ("0".."9").to_a
  alphanumeric_characters.include?(s)
end


# is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome("0P") == false
