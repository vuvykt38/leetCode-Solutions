# 1089. Duplicate Zeros
# Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.

# Note that elements beyond the length of the original array are not written.

# Do the above modifications to the input array in place, do not return anything from your function.



# Example 1:

# Input: [1,0,2,3,0,4,5,0]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
# Example 2:

# Input: [1,2,3]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,2,3]


# Note:

# 1 <= arr.length <= 10000
# 0 <= arr[i] <= 9

def duplicate_zeros(arr)
  return nil if !arr.include?(0)
  new_arr = []
  m = arr.size
  arr.each_with_index do |val, i|
    new_arr if new_arr.size == m
    n = new_arr.size
    if val != 0
      new_arr << val
    end
    if val == 0
      new_arr << new_arr[n] = 0
    end
  end
  i = 0
  while i < arr.size
    arr[i] = new_arr[i]
    i += 1
  end
end

arr = [1,0,2,3,0,4,5,0]
duplicate_zeros(arr)
p arr
