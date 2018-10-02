# Maximum Subset Sum With No Adjacent Elements
# Write a function that takes in an array of positive integers
# and returns an integer representing the maximum sum of
# non-adjacent elements in the array. If a sum cannot be generated, the function should return 0.
# Example:
#
# input: [75, 105, 120, 75, 90, 135]
# output: 330 // (75 + 120 + 135)

# sub optimal solution

def maximumSubset(arr)
  #edge cases 1
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1

  maxArray = Array.new(arr.length, 0)

 maxArray[1] = [arr[0], arr[1]].max;

   for i in 2..arr.length do
     puts i
   end


end

maximumSubset([75, 105, 120, 75, 90, 135])
