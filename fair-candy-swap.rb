# 888. Fair Candy Swap

# Alice and Bob have candy bars of different sizes: A[i] is the size of the i-th bar of candy that Alice has, and B[j] is the size of the j-th bar of candy that Bob has.

# Since they are friends, they would like to exchange one candy bar each so that after the exchange, they both have the same total amount of candy.  (The total amount of candy a person has is the sum of the sizes of candy bars they have.)

# Return an integer array ans where ans[0] is the size of the candy bar that Alice must exchange, and ans[1] is the size of the candy bar that Bob must exchange.

# If there are multiple answers, you may return any one of them.  It is guaranteed an answer exists.



# Example 1:

# Input: A = [1,1], B = [2,2]
# Output: [1,2]
# Example 2:

# Input: A = [1,2], B = [2,3]
# Output: [1,2]
# Example 3:

# Input: A = [2], B = [1,3]
# Output: [2,3]
# Example 4:

# Input: A = [1,2,5], B = [2,4]
# Output: [5,4]


# Note:

# 1 <= A.length <= 10000
# 1 <= B.length <= 10000
# 1 <= A[i] <= 100000
# 1 <= B[i] <= 100000
# It is guaranteed that Alice and Bob have different total amounts of candy.
# It is guaranteed there exists an answer.

def fair_candy_swap(a, b)
  sum_for_each_arr = (a.sum + b.sum)/2

  h_value = {}
  h_value.default = 0
  b.each do |e|
    h_value[e] += 1
  end


  i = 0
  while i < a.size
    t = sum_for_each_arr - (a.sum - a[i])
    # p "a[i]: #{a[i]}, h_value[t]: #{h_value[t]}"
    if h_value[t] > 0
      # p "sum: #{sum_for_each_arr}, a[i]: #{a[i]}, h_value[t]: #{h_value[t]}"
      return [a[i], t]
    end
    i += 1
  end
end

p fair_candy_swap([1,1], [2,2]) == [1,2]
p fair_candy_swap([1,2], [2,3]) == [1,2]
p fair_candy_swap([2], [1,3]) == [2,3]
p fair_candy_swap([1,2,5], [2,4]) == [5,4]
