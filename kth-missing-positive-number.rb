# 1539. Kth Missing Positive Number
# Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.

# Find the kth positive integer that is missing from this array.



# Example 1:

# Input: arr = [2,3,4,7,11], k = 5
# Output: 9
# Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.
# Example 2:

# Input: arr = [1,2,3,4], k = 2
# Output: 6
# Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.


# Constraints:

# 1 <= arr.length <= 1000
# 1 <= arr[i] <= 1000
# 1 <= k <= 1000
# arr[i] < arr[j] for 1 <= i < j <= arr.length

def find_kth_positive(arr, k)
  n = arr.size
  i = 1
  new_arr = []
  while i <= n + k
    new_arr << i if !arr.include?(i)
  i += 1
  end
  p new_arr
  p new_arr[k-1]
end

p find_kth_positive([2,3,4,7,11], 5) == 9
p find_kth_positive([1,2,4,5], 5) == 9
p find_kth_positive([1,2,3,4], 2) == 6
