# 1351. Count Negative Numbers in a Sorted Matrix
# Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise.

# Return the number of negative numbers in grid.



# Example 1:

# Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
# Output: 8
# Explanation: There are 8 negatives number in the matrix.
# Example 2:

# Input: grid = [[3,2],[1,0]]
# Output: 0
# Example 3:

# Input: grid = [[1,-1],[-1,-1]]
# Output: 3
# Example 4:

# Input: grid = [[-1]]
# Output: 1


# Constraints:

# m == grid.length
# n == grid[i].length
# 1 <= m, n <= 100
# -100 <= grid[i][j] <= 100

def count_negatives(grid)
  count = 0
  grid.each do |e|
    e.each do |e1|
      e1 < 0 ? count += 1 : count
    end
  end
  count
end

p count_negatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])
p count_negatives([[3,2],[1,0]])
p count_negatives([[1,-1],[-1,-1]])
p count_negatives([[-1]])
