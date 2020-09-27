# 414. Third Maximum Number
# Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).

# Example 1:
# Input: [3, 2, 1]

# Output: 1

# Explanation: The third maximum is 1.
# Example 2:
# Input: [1, 2]

# Output: 2

# Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
# Example 3:
# Input: [2, 2, 3, 1]

# Output: 1

# Explanation: Note that the third maximum here means the third maximum distinct number.
# Both numbers with value 2 are both considered as second maximum.

def third_max(nums)
  new_arr = unique_element(nums)
  new_arr.sort!
  n = new_arr.size
  new_arr[n-3] || new_arr[n-2]
end

def unique_element(arr)
  new_arr1 = [arr[0]]

  arr.each do |e|
    !new_arr1.include?(e) ? new_arr1 << e : new_arr1
  end
  new_arr1
end

p third_max([2, 2, 1])
p third_max([2, 2, 3, 1])
p third_max([2, 2, 3, 1, 1])
