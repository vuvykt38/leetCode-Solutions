# 1566. Detect Pattern of Length M Repeated K or More Times
# Given an array of positive integers arr,  find a pattern of length m that is repeated k or more times.

# A pattern is a subarray (consecutive sub-sequence) that consists of one or more values, repeated multiple times consecutively without overlapping. A pattern is defined by its length and the number of repetitions.

# Return true if there exists a pattern of length m that is repeated k or more times, otherwise return false.



# Example 1:

# Input: arr = [1,2,4,4,4,4], m = 1, k = 3
# Output: true
# Explanation: The pattern (4) of length 1 is repeated 4 consecutive times. Notice that pattern can be repeated k or more times but not less.
# Example 2:

# Input: arr = [1,2,1,2,1,1,1,3], m = 2, k = 2
# Output: true
# Explanation: The pattern (1,2) of length 2 is repeated 2 consecutive times. Another valid pattern (2,1) is also repeated 2 times.
# Example 3:

# Input: arr = [1,2,1,2,1,3], m = 2, k = 3
# Output: false
# Explanation: The pattern (1,2) is of length 2 but is repeated only 2 times. There is no pattern of length 2 that is repeated 3 or more times.
# Example 4:

# Input: arr = [1,2,3,1,2], m = 2, k = 2
# Output: false
# Explanation: Notice that the pattern (1,2) exists twice but not consecutively, so it doesn't count.
# Example 5:

# Input: arr = [2,2,2,2], m = 2, k = 3
# Output: false
# Explanation: The only pattern of length 2 is (2,2) however it's repeated only twice. Notice that we do not count overlapping repetitions.


# Constraints:

# 2 <= arr.length <= 100
# 1 <= arr[i] <= 100
# 1 <= m <= 100
# 2 <= k <= 100

def contains_pattern(arr, m, k)
  arr_1 = sub_arr(arr, m)
  new_arr_2 = []
  arr_1.each do |e|
    new_arr_2 << count_sub_arr(e)
  end
  new_arr_2.flatten!
  new_arr_2.map { |e| return true if e >= k}
  false
end

def count_sub_arr(arr)
  count = 1
  arr_1 = []
  i = 0
  while i < arr.size
    if arr[i] != arr[i+1]
      arr_1 << count
      count = 1
    else
      count += 1
    end
  i += 1
  end
  arr_1
end

def sub_arr(arr, m)
  new_arr = []
  i = 0
  while i < arr.size - (m-1)
    new_arr_i = []
    j = i
    while j < arr.size - (m-1)
      # p "#{i} #{j}: #{arr[j..j+m-1]}"
      new_arr_i << arr[j..j+m-1]
    j += m
    end
    new_arr << new_arr_i
  i += 1
  end
  new_arr
end

# sub_arr([1,2,3,1,2], 2)
# p sub_arr([2,2,2,2], 2)

p contains_pattern([1,2,1,2,1,3], 2, 3) == false
p contains_pattern([1,2,3,1,2], 2, 2) == false
p contains_pattern([1,2,4,4,4,4], 1, 3) == true
p contains_pattern([1,2,3,1,2], 2, 2) == false
p contains_pattern([2,2,2,2], 2, 3) == false
