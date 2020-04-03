def remove_element(nums, val)
    nums.each do |i|
    	nums.delete(val) if i == val
    end
    nums.len
end

p remove_element([0,1,2,2,3,0,4,2], 2)