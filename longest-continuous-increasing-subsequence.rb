# 674. Longest Continuous Increasing Subsequence
# Given an unsorted array of integers, find the length of longest continuous increasing subsequence (subarray).

# Example 1:
# Input: [1,3,5,4,7]
# Output: 3
# Explanation: The longest continuous increasing subsequence is [1,3,5], its length is 3.
# Even though [1,3,5,7] is also an increasing subsequence, it's not a continuous one where 5 and 7 are separated by 4.
# Example 2:
# Input: [2,2,2,2,2]
# Output: 1
# Explanation: The longest continuous increasing subsequence is [2], its length is 1.
# Note: Length of the array will not exceed 10,000.

def find_length_of_lcis(nums)
  n = nums.size
  return 0 if n == 0
  return 1 if nums == nums.sort && nums.last == nums.first
  return n if nums.sort == nums.uniq

  i = 0
  t = nil
  new_arr = []

  while i < n - 1
    j = i + 1
    while j < n
      if nums[j-1] >= nums[j]
        new_arr << nums[i..j-1]
        # p "i:#{i}, j:#{j}, nums[j-1]:#{nums[j-1]}, nums[j]:#{nums[j]}"
        if i != n - 1
          t = i + 1
        end
        break
      end
    j += 1
    end
  i += 1
  end

  t != n-1 && t != nil ? new_arr << nums[t..n-1] : new_arr
  max = 0
  new_arr.each do |e|
    e.length > max ? max = e.length : max
  end
  max
end

p find_length_of_lcis([1,3,5,4,7,1,8]) == 3
p find_length_of_lcis([1,2,3]) == 3
p find_length_of_lcis([]) == 0
p find_length_of_lcis([1,1,2]) == 2
p find_length_of_lcis([1,3,4,2,7,8,9]) == 4
