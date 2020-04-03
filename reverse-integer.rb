def reverse(x)
	string = x.to_s   
	n = string.size
	mid = n/2
	last_index = n - 1
	(0..mid - 1).each do |i|
		interchange(string, i, last_index - i)
	end
	result = string.to_i
	if result > 2147483648 || result < -2147483648
	return 0
 	end
 	x < 0 ? -result : result
end

def interchange(array, i, j)
  temp = array[i]
  array[i] = array[j]
  array[j] = temp
end

p reverse(-121)


