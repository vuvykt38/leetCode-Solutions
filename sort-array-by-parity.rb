# 905. Sort Array By Parity
# Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.

# You may return any answer array that satisfies this condition.



# Example 1:

# Input: [3,1,2,4]
# Output: [2,4,3,1]
# The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.


# Note:

# 1 <= A.length <= 5000
# 0 <= A[i] <= 5000


def sort_array_by_parity(arr)
 n = arr.size
  pivot = arr[n/2]

  i = 0
  j = n -1

  while i < j
    while i < n && arr[i] % 2 == 0
      i += 1
    end

    while j >= 0 and arr[j] % 2 != 0
      j -= 1
    end

    if i < j
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end

    i += 1
    j -= 1
  end
  arr
end

# p sort_array_by_parity([0,1,1,2,0,1234])
# p sort_array_by_parity([6,3,4,5,7,8,12,34,56])
# p sort_array_by_parity([3,1,2,4])
# p sort_array_by_parity([1,3,5,4])
p sort_array_by_parity([1,3])
p sort_array_by_parity([0,2])
