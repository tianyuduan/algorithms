
#1, 1, 2, 3, 5, 8

def fib_memo(n)
  memo = [nil] * (n + 1)
  fib(n, memo)
end

def fib(n, memo)
  # states if memo[n] is not null, return the value
  if memo[n]
    return memo[n]
  end

  if (n == 1 || n == 2)
    return 1
  else
    result = fib(n - 1, memo) + fib(n - 2, memo)
    memo[n] = result
    return result
  end
end

  # this creates an array of null values of array size of target value + 1
  # fib 5, will return an array of 6 nil values, from 0 to 5
p fib_memo(5)
