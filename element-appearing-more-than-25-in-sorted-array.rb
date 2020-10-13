# 1287. Element Appearing More Than 25% In Sorted Array
# Given an integer array sorted in non-decreasing order, there is exactly one integer in the array that occurs more than 25% of the time.

# Return that integer.



# Example 1:

# Input: arr = [1,2,2,6,6,6,6,7,10]
# Output: 6


# Constraints:

# 1 <= arr.length <= 10^4
# 0 <= arr[i] <= 10^5

def find_special_integer(arr)
  n = arr.size
  h_value = {}
  h_value.default = 0
  arr.each do |e|
    h_value[e] += 1
  end
  h_value.select { |key, val| return key if val > n*0.25}
end
