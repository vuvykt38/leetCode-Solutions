# 977. Squares of a Sorted Array
# Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.



# Example 1:

# Input: [-4,-1,0,3,10]
# Output: [0,1,9,16,100]
# Example 2:

# Input: [-7,-3,2,3,11]
# Output: [4,9,9,49,121]


# Note:

# 1 <= A.length <= 10000
# -10000 <= A[i] <= 10000
# A is sorted in non-decreasing order

def sorted_squares(a)
  new_arr = []
  a.each do |e|
    new_arr << e*e
  end
  new_arr.sort
  # n = new_arr.size
  # (0..n-2).each do |i|
  #   (i+1..n-1).each do |j|
  #     if new_arr[i] > new_arr[j]
  #       temp = new_arr[i]
  #       new_arr[i] = new_arr[j]
  #       new_arr[j] = temp
  #     end
  #   end
  # end
  # new_arr
end

# p sorted_squares([-4,-1,0,3,10])
p sorted_squares([-7,-3,2,3,11])
