# 1523. Count Odd Numbers in an Interval Range

# Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).



# Example 1:

# Input: low = 3, high = 7
# Output: 3
# Explanation: The odd numbers between 3 and 7 are [3,5,7].
# Example 2:

# Input: low = 8, high = 10
# Output: 1
# Explanation: The odd numbers between 8 and 10 are [9].


# Constraints:

# 0 <= low <= high <= 10^9

def count_odds(low, high)
  # array = Array(low..high)
  # count = 0
  # array.each do |e|
  #   count +=1 if e % 2 != 0
  # end
  # count
  if low % 2 != 0 && high % 2 != 0
    count = (high - low - 1)/2 + 2
  else
    count = (high - low - 1)/2 + 1
  end

end

# p count_odds(1,15) == 8
p count_odds(800445804,979430543) == 89492370
