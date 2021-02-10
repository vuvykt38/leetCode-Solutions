# 233. Number of Digit One

# Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.



# Example 1:

# Input: n = 13
# Output: 6
# Example 2:

# Input: n = 0
# Output: 0


# Constraints:

# 0 <= n <= 2 * 109

# Brute force [Time Limit Exceeded]


def count_digit_one(n)
  new_arr = (0..n).to_a
  count = 0
  new_arr.each do |e|
    count += e.to_s.split("").count("1")
  end
  count
end

# def count_one(number)
#   count = 0
#   number.to_s.split("").each do |e|
#     count +=1 if e == "1"
#   end
#   count
# end

p count_digit_one(13)
