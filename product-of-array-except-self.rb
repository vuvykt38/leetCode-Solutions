# Product of Array Except Self
# Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

# Example:

# Input:  [1,2,3,4]
# Output: [24,12,8,6]
# Constraint: It's guaranteed that the product of the elements of any prefix or suffix of the array (including the whole array) fits in a 32 bit integer.

# Note: Please solve it without division and in O(n).

# Follow up:
# Could you solve it with constant space complexity? (The output array does not count as extra space for the purpose of space complexity analysis.)

# def product_except_self(nums)
#   result = []
#   nums.each_with_index do |val, i|
#     result << (nums - [nums.slice(i)]).inject(:*)
#   end
#   result
# end


# def product_except_self(nums)
#   return 0 if nums.size <= 1

#   return [nums[1], nums[0]] if nums.size == 2

#   #  size >= 3
#   [nums[1..-1].inject(:*)] + product_except_self(nums[1..-1]).map {|v| v * nums[0]}
# end

def product_except_self(nums)
    n = nums.size
    out = [1] * n
    left = right = 1
    1.upto(n-1) { |i|
      left *= nums[i-1]
      out[i] *= left
      right *= nums[-i]
      out[~i] *= right
      p out
    }
    out
end

product_except_self([1,2,3,4])
