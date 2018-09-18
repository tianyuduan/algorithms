# In a 2 dimensional array grid, each value grid[i][j] represents the height of a building located there. We are allowed to increase the height of any number of buildings, by any amount (the amounts can be different for different buildings). Height 0 is considered to be a building as well.
# At the end, the "skyline" when viewed from all four directions of the grid, i.e. top, bottom, left, and right, must be the same as the skyline of the original grid. A city's skyline is the outer contour of the rectangles formed by all the buildings when viewed from a distance. See the following example.
# What is the maximum total sum that the height of the buildings can be increased?
# Example:
# Input: grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
# Output: 35
# Explanation:
# The grid is:
# [ [3, 0, 8, 4],
#   [2, 4, 5, 7],
#   [9, 2, 6, 3],
#   [0, 3, 1, 0] ]
#
# The skyline viewed from top or bottom is: [9, 4, 8, 7]
# The skyline viewed from left or right is: [8, 7, 9, 3]
#
# The grid after increasing the height of buildings without affecting skylines is:
#
# gridNew = [[8, 4, 8, 7],
#             [7, 4, 7, 7],
#             [9, 4, 8, 7],
#             [3, 3, 3, 3]]
#

#psuedo code -
# Step 1: Acquire skyline views
# Step 2: Use array as template
# Step 3: Create new Matrix
# step 4: subtract Matrixnew - Matrixold

def SkylineMax(grid)
  ##LR array
  lrArray = []
  0.upto(grid.length - 1) do |j|
    max = 0
    for i in (0..grid.length - 1)
      if grid[i][j] > max
        max = grid[i][j]
      end
    end
    lrArray << max
  end

  ##TD Array
  tdArray= []
  grid.each_with_index do |i, index|
      tdArray << grid[index].max
  end

  ## create new Matrix
  matrixNew = Array.new(grid.length, 0) {Array.new(grid.length, 0)}
  maxArray = []
  maxArray2 = []
  tdArray.each do |max|
    lrArray.each do |min|
      if min > max
        min = max
      end
      maxArray << min
      if maxArray.length > 3
        maxArray2 << maxArray
        maxArray = []
      end
    end
  end
   maxArray2
end

p SkylineMax([[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]])
