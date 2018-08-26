What is Dynamic Programming?

Dynamic programming amounts to breaking down an optimization problem into simpler sub-problems, and storing the solution to each sub-problem so that each sub-problem is only solved once.

Memoization - technique known to store solutions


The Dynamic Programming process:
Step 1: Identify the sub-problem in words.
Step 2: Write out the sub-problem as a recurring mathematical decision. (recursion)
Step 3: Solve the original problem using Steps 1 and 2.
Step 4: Determine the dimensions of the memoization array and the direction in which it should be filled.


Case with Fibonacci Sequence:

1, 1, 2, 3, 5, 8 ...
def fib(n)
  if n == 1 or n == 2
  result = 1
  else
  result = fib(n-1) + fib(n-2)
return result
end

complexity: O(2^n)


Memoization solution:


def fib(n, memo)
if memo[n]  != null
return memo[n]
if n == 1 or n == 2
result = 1
else
result = fib(n-1) + fib(n-2)
memo[n] = result
return result
end

complexity at most is < 2N + 1 * O(1) = O(n)


bottom up approach:

def fib_bottom_up(n)
  if n == 1 or n == 2
  return 1
  bottom_up = new int[n + 1]
  bottom_up[1] = 1
  bottom_up[2] = 1
  for i from 3 upto n:
  bottom_up[i] = bottom_up[i - 1 ] + bottom_up[i - 2]
  return bottom_up[n]
end

complexity O(n)
