# 645. Set Mismatch
# The set S originally contains numbers from 1 to n. But unfortunately, due to the data error, one of the numbers in the set got duplicated to another number in the set, which results in repetition of one number and loss of another number.

# Given an array nums representing the data status of this set after the error. Your task is to firstly find the number occurs twice and then find the number that is missing. Return them in the form of an array.

# Example 1:
# Input: nums = [1,2,2,4]
# Output: [2,3]
# Note:
# The given array size will in the range [2, 10000].
# The given array's numbers won't have any order.

def find_error_nums(nums)
  nums.sort!
  h_value = {}
  h_value.default = 0
  nums.each do |e|
    h_value[e] += 1
  end
  # find dup number
  new_arr = []

  dup_number = nil
  h_value.each do |key,val|
    break dup_number = key if val > 1
  end
  return [] if dup_number == nil
  new_arr << dup_number

  # run i from arr.min until find the firstly missing number
  i = 1
  while i < nums.size + i
    break new_arr << i if !nums.include?(i)
  i += 1
  end

end

p find_error_nums([1,2,2,4]) == [2,3]
p find_error_nums([1,5,6,4,4]) == [4,2]
p find_error_nums([1,1]) == [1,2]
p find_error_nums([1,2]) == []
p find_error_nums([]) == []
p find_error_nums([2,2]) == [2,1]
