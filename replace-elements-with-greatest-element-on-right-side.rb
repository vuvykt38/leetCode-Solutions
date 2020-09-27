# 1299. Replace Elements with Greatest Element on Right Side

# Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.

# After doing so, return the array.



# Example 1:

# Input: arr = [17,18,5,4,6,1]
# Output: [18,6,6,6,1,-1]

def replace_elements(arr)
  n = arr.size
  new_arr = []
  arr.each_with_index do |val, i|
    new_arr << max(arr[i+1,n-1])
  end
  new_arr[n-1] = -1
  new_arr
end

def max(arr1)
  max = 0
  arr1.each do |e|
    e > max ? max = e : max
  end
  max
end

p replace_elements([17,6,3,2,1,5])


