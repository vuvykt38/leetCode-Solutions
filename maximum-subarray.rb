# # # # 53. Maximum Subarray

# # # # Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# # # # Example:

# # # # Input: [-2,1,-3,4,-1,2,1,-5,4],
# # # # Output: 6
# # # # Explanation: [4,-1,2,1] has the largest sum = 6.
# # # # Follow up:

# # # # If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.


# def max_sub_array(array)
# 	n = array.size
# 	big_array = []
# 	i = 0
# 	while i < n
# 		big_array << array[i,n]
# 		i +=1
# 	end

# 	new_arr = []
# 	big_array.each do |i|
# 		new_arr << lasgest_sum_array(sub_array(i))
# 	end
# 	new_arr.max
# end


# def sub_array(array)
# 	result = []
# 	size = array.size
# 	i = 0
# 	while i < size
# 		result << array[0,i]
# 		i +=1
# 	end
# 	result
# end

# def lasgest_sum_array(array)
# 	current_max = array[0].sum
# 	sum = nil

# 	for i in (1..array.size - 1)
# 		sum = array[i].sum
# 		current_max =  sum if current_max < sum
# 	end
# 	current_max
# end


# def find_sub_array(array, number_of_element)
# 	sub_arrays = []
# 	i = 0
# 	while i + number_of_element <= array.size
# 		sub_arrays << array[i, number_of_element]
# 		i += 1
# 	end
# 	sub_arrays
# end

# def max_sub_array(array)
# 	sub_array_size = array.size
# 	arrays = []
# 	while sub_array_size > 0  do 
# 		arrays << find_sub_array(array, sub_array_size).map {|arr| arr.sum }.max

# 		sub_array_size -= 1
# 	end
# 	arrays.max
# end

def max_sub_array(arrays)
	i = 1
	sum_at_i = arrays[0]
	max = sum_at_i
	last_index = arrays.size - 1
	while i <= last_index do 
		if sum_at_i + arrays[i] > arrays[i]
			sum_at_i += arrays[i]
		else
			sum_at_i = arrays[i]
		end
		
		max = sum_at_i if max < sum_at_i

		i += 1	
	end
	max
end

p max_sub_array([31,-41,59,26,-53,58,97,-93,-23,84, 1,1,1,1,1,1,1,1,1,1,11,])


p max_sub_array([99, -1000, 2,3,4,5,96,-1000, 98])
# p lasgest_sum_array(sub_array([1,2,3]))
# p lasgest_sum_array([[-2], [-2, 1], [-2, 1, -3], [-2, 1, -3, 4], [-2, 1, -3, 4, -1], [-2, 1, -3, 4, -1, 2], [-2, 1, -3, 4, -1, 2, 1], [-2, 1, -3, 4, -1, 2, 1, -5], [-2, 1, -3, 4, -1, 2, 1, -5, 4]])














