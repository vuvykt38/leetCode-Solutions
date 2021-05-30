# 647. Palindromic Substrings
# Given a string s, return the number of palindromic substrings in it.

# A string is a palindrome when it reads the same backward as forward.

# A substring is a contiguous sequence of characters within the string.



# Example 1:

# Input: s = "abc"
# Output: 3
# Explanation: Three palindromic strings: "a", "b", "c".
# Example 2:

# Input: s = "aaa"
# Output: 6
# Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".


# Constraints:

# 1 <= s.length <= 1000
# s consists of lowercase English letters.

# def count_substrings(s)
#   arr_s = s.split("")
#   arr_substring = []
#   i = 0
#   while i < arr_s.size
#     arr_substring << arr_s[i]
#     j = i + 1
#     while j < arr_s.size
#       arr_substring << arr_s[i..j].join
#       j += 1
#     end
#     i += 1
#   end
#   count = 0
#   ans = []
#   arr_substring.each do |e|
#     if is_palindromic?(e)
#       count += 1
#       ans << e
#     end
#   end
#   p ans
#   count
# end

# def is_palindromic?(s)
#   i = 0
#   n = s.size
#   while i < (n / 2)
#     return false if s[i] != s[n-i-1]
#     i += 1
#   end

#   true
# end

# def is_palindromic?(s)
#   s.reverse == s
# end

def count_substrings(s)
  arr_s = s.split("")
  count = arr_s.size

  # palindromic.size is an even number
  i = 0
  while i < arr_s.size
    j = i
    k = i + 1

    while j >= 0 && k < arr_s.size
      break if arr_s[j] != arr_s[k]
      count += 1

      j -= 1
      k += 1
    end
    i += 1
  end

  # palindromic.size is an odd number
  i = 0
  while i < arr_s.size
    j = i - 1
    k = i + 1

    while j >= 0 && k < arr_s.size
      break if arr_s[j] != arr_s[k]
      count += 1

      j -= 1
      k += 1
    end
    i += 1
  end

  p count
end


# p count_substrings("abc") == 3
# p count_substrings("aaa") == 6
# p count_substrings("abcda") == 5
# p count_substrings("abcdaa") == 7
# p count_substrings("aaaaabbbbcccc") == 35
# p count_substrings("dbabcccbcdbbbadabbdabaabcbbabaacdadcdbbbbdddbcbbbcbcabacacdaadaadcdccbacdaadadcbaacabbddabdadcabbccadacadaaacbbddaaababacaabbbacaccbcbbabddbbcccaaacbcdcabcbacdbddcdcadaaadcbccbbcabbcbdaadcbddaacacdadacbbdabcdcdadccaccdbdddddcabdbcdbaadacadadbabdcdbbadaacdbadcdabdbbcabbbdaacaaaaadcaabaaaadabaaddcaabdddcbcadcbdbbdbcbcdbadcadacbbcdccddaccccacbacaacbbdadadcacabdabadbbcdbcaaccdbdcabcadbacbccddbabbdacbcbbcbcabcacdaacccaadcdbdccabcaaacaddadcabacdccaaaddaaadbccdbbcccdddababcdbcddcbdddbbbdaadaccbcaabbcbdbadbabbacdbbbdaaccdcabddacadabcccacdabacbcdbcbdabddacacbdbcaacacaabbaaccddabaadbbaabaddbcacbacdbbbacdccabbcdbbbdbdbbcacabdddbdbaaabbcdcbabcbbbccdcdcdcaaddadccbabbacaddcaddcadcdccaccacabbaababdbbcbdcdccccccdadbdbdcdbdadcdcacdaabaacabaacdacdbaaccadbcddbdccabbcabcadcbdadbcdadbbbccacbcbbcaaaabdacbadacaadcadaacdacddcbbabdacacaabccdaccbbcbbcbcaacdabdcbcdbccdbcbcbddaacdacaaaddcaddcadccacbaddbbbccbbbcbbcbadcabbccbbaadaacacabddbdbddcadbdaaccadbcccabdcdbadbbacbcbbcdcabcddcddddabddbdabdcabdbdbbbcdbcdabbdcb") == 1664
