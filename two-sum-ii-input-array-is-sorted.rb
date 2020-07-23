# 167. Two Sum II - Input array is sorted
# Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.

# Note:

# Your returned answers (both index1 and index2) are not zero-based.
# You may assume that each input would have exactly one solution and you may not use the same element twice.
# Example:

# Input: numbers = [2,7,11,15], target = 9
# Output: [1,2]
# Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.

def two_sum(numbers, target)
  n = numbers.size
  i = 0
  new_arr = []
  while i < n
    j = i + 1
    while j < n
      # p "i: #{i}, j: #{j}, #{numbers[i]}, #{numbers[j]}"
      if numbers[i] + numbers[j] == target
        new_arr << i+1
        new_arr << j+1
      end
      j += 1
    end
  i += 1
  end
  new_arr
end
p two_sum([2,7,11,15], 9)
p two_sum([1], 0)

