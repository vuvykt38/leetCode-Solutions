# Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

# Example 1:

# Input: 121
# Output: true
# Example 2:

# Input: -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:

# Input: 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.


def is_palindrome(x)
    string = x.to_s
    n = string.size
    mid = n/2
    last_index = n - 1
    (0..mid-1).each do |i|
        interchange(string, i, last_index - i)
    end
    string.to_i == x ? true : false
end

def interchange(array, i, j)
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
end

p is_palindrome(10)