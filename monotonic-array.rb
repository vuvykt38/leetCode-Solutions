# 896. Monotonic Array
# An array is monotonic if it is either monotone increasing or monotone decreasing.

# An array A is monotone increasing if for all i <= j, A[i] <= A[j].  An array A is monotone decreasing if for all i <= j, A[i] >= A[j].

# Return true if and only if the given array A is monotonic.



# Example 1:

# Input: [1,2,2,3]
# Output: true
# Example 2:

# Input: [6,5,4,4]
# Output: true
# Example 3:

# Input: [1,3,2]
# Output: false
# Example 4:

# Input: [1,2,4,5]
# Output: true
# Example 5:

# Input: [1,1,1]
# Output: true

def is_monotonic(a)
  increased_arr(a) || decreased_arr(a)
end

def increased_arr(a)
  i = 1
  while i < a.size
    return false if a[i-1] > a[i]
  i += 1
  end
  true
end

def decreased_arr(a)
  i = 1
  while i < a.size
    return false if a[i-1] < a[i]
  i += 1
  end
  true
end

p is_monotonic([1,2,2,3]) == true
p is_monotonic([6,5,4,4]) == true
p is_monotonic([1,3,2]) == false
p is_monotonic([1,2,4,5]) == true
p is_monotonic([1,1,1]) == true
p is_monotonic([]) == true
p is_monotonic([1,1,0]) == true
p is_monotonic([0,0,1,1]) == true
p is_monotonic([2,2,2,1,4,5]) == false

