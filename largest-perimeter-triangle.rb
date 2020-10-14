# 976. Largest Perimeter Triangle

# Given an array A of positive lengths, return the largest perimeter of a triangle with non-zero area, formed from 3 of these lengths.

# If it is impossible to form any triangle of non-zero area, return 0.



# Example 1:

# Input: [2,1,2]
# Output: 5
# Example 2:

# Input: [1,2,1]
# Output: 0
# Example 3:

# Input: [3,2,3,4]
# Output: 10
# Example 4:

# Input: [3,6,2,3]
# Output: 8


# Note:

# 3 <= A.length <= 10000
# 1 <= A[i] <= 10^6

def largest_perimeter(a)
  a.sort!.reverse!
  new_arr = []
  i = 0
  sum = 0
  while i < a.size
    j = i+2
    while j < a.size
      # p "i:#{i}, j:#{j}, a[i]:#{a[i]}, a[i+1]:#{a[i+1]}, a[j]:#{a[j]}, arra: #{a[i]}, #{a[i+1]}, #{a[j]}"
      new_arr = [a[i], a[i+1], a[j]]
      triangle?(new_arr)
      if triangle?(new_arr)
        return sum = new_arr.sum
      end
    j += 1
    end
  i += 1
  end
  sum
end

def triangle?(new_arr)
  return false if !((new_arr[0] + new_arr[1] > new_arr[2]) && (new_arr[0] + new_arr[2] > new_arr[1]) && (new_arr[2] + new_arr[1] > new_arr[0]))
  true
end

# p triangle?([1,2,1])



p largest_perimeter([1,2,1]) == 0
p largest_perimeter([2,1,2]) == 5
p largest_perimeter([3,6,2,3]) == 8
p largest_perimeter([3,2,3,4]) == 10
p largest_perimeter([2,1,2]) == 5
