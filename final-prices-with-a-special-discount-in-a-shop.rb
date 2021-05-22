# 1475. Final Prices With a Special Discount in a Shop
# Given the array prices where prices[i] is the price of the ith item in a shop. There is a special discount for items in the shop, if you buy the ith item, then you will receive a discount equivalent to prices[j] where j is the minimum index such that j > i and prices[j] <= prices[i], otherwise, you will not receive any discount at all.

# Return an array where the ith element is the final price you will pay for the ith item of the shop considering the special discount.



# Example 1:

# Input: prices = [8,4,6,2,3]
# Output: [4,2,4,2,3]
# Explanation:
# For item 0 with price[0]=8 you will receive a discount equivalent to prices[1]=4, therefore, the final price you will pay is 8 - 4 = 4.
# For item 1 with price[1]=4 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 4 - 2 = 2.
# For item 2 with price[2]=6 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 6 - 2 = 4.
# For items 3 and 4 you will not receive any discount at all.
# Example 2:

# Input: prices = [1,2,3,4,5]
# Output: [1,2,3,4,5]
# Explanation: In this case, for all items, you will not receive any discount at all.
# Example 3:

# Input: prices = [10,1,1,6]
# Output: [9,0,1,6]


# Constraints:

# 1 <= prices.length <= 500
# 1 <= prices[i] <= 10^3

def final_prices(prices)
 ans = []
 i = 0
 while i < prices.size
  ans << prices[i]
  j = i + 1
    while j < prices.size
      if prices[j] <= prices[i]
        # p "i: #{i}, prices[i]: #{prices[i]}, j: #{j}, prices[j]: #{prices[j]}, ans: #{ans}"
        ans[i] = prices[i] - prices[j]
        j = prices.size - 1
      end
      j += 1
    end
  i += 1
 end
 ans
end

p final_prices([1,2,3,4,5]) == [1,2,3,4,5]
p final_prices([8,4,6,2,3]) == [4,2,4,2,3]
