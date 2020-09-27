# 941. Valid Mountain Array
# Given an array A of integers, return true if and only if it is a valid mountain array.

# Recall that A is a mountain array if and only if:

# A.length >= 3
# There exists some i with 0 < i < A.length - 1 such that:
# A[0] < A[1] < ... A[i-1] < A[i]
# A[i] > A[i+1] > ... > A[A.length - 1]
# Example 1:

# Input: [2,1]
# Output: false
# Example 2:

# Input: [3,5,5]
# Output: false
# Example 3:

# Input: [0,3,2,1]
# Output: true

def valid_mountain_array(a)
  n = a.size

  return false if n <= 2
  t = nil
  i = 1
  while i < n
    break t = i if a[i] <= a[i-1]
  i += 1
  end

 return false if t == nil || t == 1
 new_arr = a.last(n-t)

 return false if new_arr.size == 1 && !(a[t] < a[t-1])

  j = 1
  while j < new_arr.size
    # p "#{new_arr[j]}, #{new_arr[j-1]}, #{new_arr[j] > new_arr[j-1]}"
    return false if new_arr[j] >= new_arr[j-1]
  j += 1
  end
  true

end

# p valid_mountain_array([0,2,3,4,5,2,1,0])
# p valid_mountain_array([3,5,6])
# p valid_mountain_array([3,5,5])
# p valid_mountain_array([0,3,2,1,4])

p valid_mountain_array([0,2,3,4,5,2,1,0]) == true
p valid_mountain_array([3,5,6]) == false
p valid_mountain_array([3,5,5]) == false
p valid_mountain_array([0,3,2,1,4]) == false
p valid_mountain_array([3,5,5,5]) == false
p valid_mountain_array([]) == false
p valid_mountain_array([1,3,2,1]) == true
p valid_mountain_array([2,1]) == false
p valid_mountain_array([9,8,7,6,5,4,3,2,1,0]) == false


