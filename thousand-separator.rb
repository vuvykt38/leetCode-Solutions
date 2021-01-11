# 1556. Thousand Separator
# Given an integer n, add a dot (".") as the thousands separator and return it in string format.



# Example 1:

# Input: n = 987
# Output: "987"
# Example 2:

# Input: n = 1234
# Output: "1.234"
# Example 3:

# Input: n = 123456789
# Output: "123.456.789"
# Example 4:

# Input: n = 0
# Output: "0"


# Constraints:

# 0 <= n < 2^31

# def thousand_separator(n)
#   n_arr = n.to_s.split("")
#   count = 0
#   ans = []
#   i = n_arr.size - 1
#   while i >= 0
#     ans  << n_arr[i]
#     count += 1
#     if count == 3 && i != 0
#       ans << '.'
#       count = 0
#     end
#     i -= 1
#   end
#   ans.reverse.join("")
# end

def thousand_separator(n)
  n_arr = n.to_s.split("")
  count = 0
  i = n_arr.size - 1
  while i >= 0
    count += 1
    # p "i: #{i}, count: #{count}"
    if count == 3 && i != 0
      n_arr.insert(i, '.')
      count = 0
    end
    i -= 1
  end
  n_arr.join("")
end
p thousand_separator(987) == "987"
p thousand_separator(1234) == "1.234"
p thousand_separator(123456789) == "123.456.789"
