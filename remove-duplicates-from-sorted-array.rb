# 26. Remove Duplicates from Sorted Array
# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Example 1:

# Given nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

# It doesn't matter what you leave beyond the returned length.
# Example 2:

# Given nums = [0,0,1,1,1,2,2,3,3,4],

# Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

# It doesn't matter what values are set beyond the returned length.


# def remove_duplicates(nums)
# 	array = nums.map { |e| e.to_s  }
# 	result = [array[0]]
# 	array.each do |i|
# 		if unique_string(i, result) == true
# 			result << i
# 		end
# 	end
# 	result.map { |e| e.to_i  }
# end

# def unique_string(string, array)
# 	array.each do |i|
# 		return false if string == i
# 	end
# 	true
# end




def remove_duplicates(nums)
	i = 0
	while i + 1 < nums.size
		if nums[i] == nums[i+1]
			nums.delete_at(i+1)
		else
			i += 1	
		end
	end
	nums.size
end

p remove_duplicates([1,1,2])


