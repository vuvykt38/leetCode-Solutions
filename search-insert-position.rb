# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Example 1:

# Input: [1,3,5,6], 5
# Output: 2
# Example 2:

# Input: [1,3,5,6], 2
# Output: 1
# Example 3:

# Input: [1,3,5,6], 7
# Output: 4
# Example 4:

# Input: [1,3,5,6], 0
# Output: 0

# Runtime: 76 ms
# def search_index(nums, target)
# 	nums.include?(target) ? nums.index(target) : nums.push(target).sort.index(target)
# end

# Runtime: 60 ms
def search_index(nums, target)
	if !nums.include?(target)
		i = 0
		while i < 4
			p "#{nums[i] < target}, #{i}, #{nums[i]}, #{target}"
			return i + 1 if nums[i]  target 
			i += 1 
		end		
	else
		nums.index(target)
	end
end

p search_index([1,3,5,6], 7)


