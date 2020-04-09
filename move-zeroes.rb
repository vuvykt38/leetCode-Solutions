# 283. Move Zeroes
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Example:

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Note:

# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.


# def move_zeroes(nums)
#   n = nums.size - 1
#   nums.each_with_index do |value, i|
#     p "#{value}, #{nums[n]}, #{nums}"
#     if value == 0 && nums[n] == 0
#       nums.insert(n, nums.delete_at(i))
#     # else
#     #   nums.insert(i+1, nums.delete_at(i))
#     end
#   end
# end

# def move_zeroes(nums)
#   n = nums.size - 1
#   (0..n - 1).each do |i|
#     (i + 1..n).each do |j|
#       interchange(nums, i, j) if nums[i] == 0
#     end
#   end
# end

# def interchange(array, i, j)
#   temp = array[i]
#   array[i] = array[j]
#   array[j] = temp
# end

def move_zeroes(nums)
  count = 0
  i = 0
  while i < nums.size && count < nums.size
    if nums[i] == 0
      t = nums.delete_at(i)
      nums << t
      count += 1
    else
      i += 1
    end
  end
end


p move_zeroes([0,0,1,2,0,0,0,2])
