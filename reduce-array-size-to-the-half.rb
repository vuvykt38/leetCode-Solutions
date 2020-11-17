# 1338. Reduce Array Size to The Half
# Given an array arr.  You can choose a set of integers and remove all the occurrences of these integers in the array.

# Return the minimum size of the set so that at least half of the integers of the array are removed.



# Example 1:

# Input: arr = [3,3,3,3,5,5,5,2,2,7]
# Output: 2
# Explanation: Choosing {3,7} will make the new array [5,5,5,2,2] which has size 5 (i.e equal to half of the size of the old array).
# Possible sets of size 2 are {3,5},{3,2},{5,2}.
# Choosing set {2,7} is not possible as it will make the new array [3,3,3,3,5,5,5] which has size greater than half of the size of the old array.
# Example 2:

# Input: arr = [7,7,7,7,7,7]
# Output: 1
# Explanation: The only possible set you can choose is {7}. This will make the new array empty.
# Example 3:

# Input: arr = [1,9]
# Output: 1
# Example 4:

# Input: arr = [1000,1000,3,7]
# Output: 1
# Example 5:

# Input: arr = [1,2,3,4,5,6,7,8,9,10]
# Output: 5

def min_set_size(arr)
  n = arr.size

  h_value = {}
  h_value.default = 0
  arr.each do |e|
    h_value[e] += 1
  end

  arr = h_value.values.sort!.reverse
  sum_value = 0
  i = 0
  while i < arr.size
    sum_value += arr[i]
    return i + 1 if sum_value >= n / 2
    i += 1
  end
end

p min_set_size([3,3,3,3,5,5,5,2,2,7]) == 2
p min_set_size([7,7,7,7,7,7]) == 1
p min_set_size([1,1,9]) == 1
p min_set_size([1000,1000,3,7]) == 1
p min_set_size([1,2,3,4,5,6,7,8,9,10]) == 5
p min_set_size([9,77,63,22,92,9,14,54,8,38,18,19,38,68,58,19]) == 5


