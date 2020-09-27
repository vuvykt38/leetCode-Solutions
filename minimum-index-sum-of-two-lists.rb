# # 599. Minimum Index Sum of Two Lists

# # Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.

# # You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.

# Example 1:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
# Output: ["Shogun"]
# Explanation: The only restaurant they both like is "Shogun".
# Example 2:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["KFC", "Shogun", "Burger King"]
# Output: ["Shogun"]
# Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
# Note:
# The length of both lists will be in the range of [1, 1000].
# The length of strings in both lists will be in the range of [1, 30].
# The index is starting from 0 to the list length minus 1.
# No duplicates in both lists

# arr1 = []
# arr2 =[]
# ["Shogun","Tapioca Express","Burger King","KFC"].each_with_index do |val1,index1|
#   ["KFC","Burger King","Tapioca Express","Shogun"].each_with_index do |val2,index2|
#     if val1 == val2
#       arr1 << val1
#       arr2 << index1 + index2
#        # p "#{val1}, #{val2}"
#        # p index1 + index2
#     end
#   end
# end
# p arr1
# p arr2
# # min_index = arr2.index(arr2.min)
# # arr1[min_index]
# min = arr2[0]
# min_index = []
# arr2.each_with_index do |val, i|
#   min_index
#   if val <= min
#     min = val
#     min_index << i
#   end
# end
# new_arr =[]
# min_index.each do |i|
#   new_arr << arr1[i]
# end
# p new_arr


# def find_restaurant(list1, list2)
#   arr1 = []
#   arr2 =[]
#   list1.each_with_index do |val1,index1|
#     list2.each_with_index do |val2,index2|
#       if val1 == val2
#         arr1 << val1
#         arr2 << index1 + index2
#       end
#     end
#   end
#   arr1
#   min = arr2[0]
#   min_index = []
#   arr2.each_with_index do |val, i|
#     min_index
#     if val <= min
#       min = val
#       min_index << i
#     end
#   end
#   new_arr =[]
#   min_index.each do |i|
#     new_arr << arr1[i]
#   end
#   new_arr
# end

# p find_restaurant(["Shogun","Tapioca Express","Burger King","KFC"], ["KFC","Burger King","Tapioca Express","Shogun"])

# arr1 = [1,2,3]
# arr2 = [2,3,4]
# arr =[]
# for i in arr1 do
#   for j in arr2 do
#     arr << (i + j)
#   end
# end
# p arr

# def sort_by_length(array)
#   n = array.size
#   (0..n - 2).each do |i|
#     (i + 1..n - 1).each do |j|

#       interchange(array, i, j) if array[i].length > array[j].length

#       p "#{array[i]}, #{array[j]}, #{array[i].length > array[j].length}"
#       array[i].length > array[j].length
#     end
#   end
#   array
# end

# def interchange(array, i, j)

#   temp = array[i]
#   array[i] = array[j]
#   array[j] = temp
# end


# array = ["1", "abcd", "abcc", "abc", "abd"]

# sort_by_length(array)

# p array

# arr1 = ["Shogun","Tapioca Express","Burger King","KFC"]
# arr2 = ["KFC","Burger King","Tapioca Express","Shogun"]

# hash = {}
# hash.default = 0
# ["Shogun","Tapioca Express","Burger King","KFC"].each do |i|
#   hash[i] = 1
# end
# hash

# ["KFC","Burger King","Tapioca Express","Shogun"].each do |i|
#   hash[i] += 1
# end

# p hash.group_by(&:last).min.last.map(&:first)

# min = 0
# arr = []
# hash.each do |i|
#   p i.last < min
# end

# def num_jewels_in_stones(j, s)

# end



# def num_jewels_in_stones(j, s)
#   hash = {}
#   hash.default = 0
#   j.split("").each do |i|
#     hash[i] = 1
#   end
#   count = 0
#   s.split("").each do |i|
#     count +=1 if hash[i] > 0
#   end
#   count
# end

# p num_jewels_in_stones("z", "ZZ")



# def generate_the_string(n)
#   arr = "abcdefghijklmnopqrstuvwxyz".split("")
#   if n % 2 != 0
#     arr.sample * n
#   else
#     a = arr.sample
#     b = (arr - [a]).sample
#     answer = a * (n-1) + b

#   end
# end

# p generate_the_string(366)

# Count the number of prime numbers less than a non-negative number, n.

# Example:

# Input: 10
# Output: 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

# def count_primes(n)

#   (2..n-1).each do |i|
#     return false if n % i == 0
#   end
#   true
# end

# count_primes(12)


# def count_primes(n)
#   array =[]
#   Array(2..n-1).each do |i|
#     if is_prime?(i)
#       p i
#       array << i
#     end
#   end
#   array.size
# end

# def is_prime?(n)
#   (2..n/2).each do |i|
#     return false if n % i == 0
#   end
#   true
# end

# p count_primes(499979)

# n = 33
# n/2 = 16
