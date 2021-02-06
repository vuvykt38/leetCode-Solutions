# 41. First Missing Positive
# Given an unsorted integer array nums, find the smallest missing positive integer.



# Example 1:

# Input: nums = [1,2,0]
# Output: 3
# Example 2:

# Input: nums = [3,4,-1,1]
# Output: 2
# Example 3:

# Input: nums = [7,8,9,11,12]
# Output: 1


# Constraints:

# 0 <= nums.length <= 300
# -231 <= nums[i] <= 231 - 1


# Follow up: Could you implement an algorithm that runs in O(n) time and uses constant extra space?

def first_missing_positive(nums)
  new_arr = nums.uniq.sort! - nums.select{ |i| i < 0 }
  t = new_arr.first
  return 1 if t == nil || t > 1
  i = 0
  while i < new_arr.size
    # p "#{i}, #{new_arr[i]} ,#{new_arr}"
    return t if t != new_arr[i]
    t += 1
    i += 1
  end

  return new_arr.last + 1
end

# p first_missing_positive([7,8,9,11,12]) == 1
# p first_missing_positive([1,2,0]) == 3
# p first_missing_positive([3,4,-1,1]) == 2
p first_missing_positive([-10,-3,-100,-1000,-239,1])
