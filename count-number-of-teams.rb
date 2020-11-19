# 1395. Count Number of Teams
# There are n soldiers standing in a line. Each soldier is assigned a unique rating value.

# You have to form a team of 3 soldiers amongst them under the following rules:

# Choose 3 soldiers with index (i, j, k) with rating (rating[i], rating[j], rating[k]).
# A team is valid if:  (rating[i] < rating[j] < rating[k]) or (rating[i] > rating[j] > rating[k]) where (0 <= i < j < k < n).
# Return the number of teams you can form given the conditions. (soldiers can be part of multiple teams).



# Example 1:

# Input: rating = [2,5,3,4,1]
# Output: 3
# Explanation: We can form three teams given the conditions. (2,3,4), (5,4,1), (5,3,1).
# Example 2:

# Input: rating = [2,1,3]
# Output: 0
# Explanation: We can't form any team given the conditions.
# Example 3:

# Input: rating = [1,2,3,4]
# Output: 4


# Constraints:

# n == rating.length
# 1 <= n <= 200
# 1 <= rating[i] <= 10^5

# def num_teams(rating)
#   i = 0
#   n = rating.size
#   new_ar = []
#   while i < n
#     j = i + 2
#     while j < n
#       if rating[i] < rating[j-1] && rating[j] > rating[j-1]
#       # p "rating[i] = #{rating[i]}, rating[j-1] = #{rating[j-1]}, rating[j] = #{rating[j]}"
#       [rating[i], rating[j-1], rating[j]]
#       end
#       p "#{rating[i] > rating[j-1] && rating[j] < rating[j-1]}, rating[i] = #{rating[i]}, rating[j-1] = #{rating[j-1]}, rating[j] = #{rating[j]}"
#       if rating[i] > rating[j-1] && rating[j] < rating[j-1]
#       p [rating[i], rating[j-1], rating[j]]
#       end
#     j += 1
#     end
#   i += 1
#   end
# end

def num_teams(rating)
  n = rating.size
  count = 0
  i = 0
  while i < n - 2
    j = i + 1
    while j < n - 1
      k = j + 1
      while k < n
        count += 1 if increased_arr([rating[i], rating[j], rating[k]]) || decreased_arr([rating[i], rating[j], rating[k]])
        k += 1
      end
      j += 1
    end
    i += 1
  end
  count
end

def increased_arr(arr)
  arr[0] < arr[1] && arr[1] < arr[2] ? true : false
end

def decreased_arr(arr)
  arr[0] > arr[1] && arr[1] > arr[2] ? true : false
end

p num_teams([2,5,3,4,1]) == 3
p num_teams([2,1,3]) == 0
p num_teams([1,2,3,4]) == 4

