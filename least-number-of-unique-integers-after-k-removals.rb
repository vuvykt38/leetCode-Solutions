# 1481. Least Number of Unique Integers after K Removals
# Given an array of integers arr and an integer k. Find the least number of unique integers after removing exactly k elements.

# Example 1:

# Input: arr = [5,5,4], k = 1
# Output: 1
# Explanation: Remove the single 4, only 5 is left.
# Example 2:
# Input: arr = [4,3,1,1,3,3,2], k = 3
# Output: 2
# Explanation: Remove 4, 2 and either one of the two 1s or three 3s. 1 and 3 will be left.


# Constraints:

# 1 <= arr.length <= 10^5
# 1 <= arr[i] <= 10^9
# 0 <= k <= arr.length

def find_least_num_of_unique_ints(arr, k)
  return arr.uniq.size if k == 0
  return 0 if arr.size == k

  h_value = {}
  h_value.default = 0
  arr.each do |e|
    h_value[e] += 1
  end

  n =  h_value.values.sort!.size

  sum = 0
  h_value.values.sort!.each_with_index do |e, i|
    t = sum += e
    if t - k >= 0 && i == n - 1
      return 1
    end
    if t - k > 0
      return n - (i + 1) + 1
    end
  end
end

p find_least_num_of_unique_ints([5,5,4], 1) == 1
p find_least_num_of_unique_ints([4,3,1,3,3,2], 3) == 1
p find_least_num_of_unique_ints([1], 1) == 0
p find_least_num_of_unique_ints([1], 0) == 1
p find_least_num_of_unique_ints([1,1,2,2], 1) == 2
p find_least_num_of_unique_ints([1,1,2,2,3,3,3], 5) == 1
p find_least_num_of_unique_ints([1,4,1,5,1,5,5,5,5,4], 3) == 2
