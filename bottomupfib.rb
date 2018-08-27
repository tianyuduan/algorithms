def bottom_up_fib(n)
  #base case, if n = 2 or n = 1, it returns the first two numbers of the sequence;
  if (n == 1 || n == 2)
    return 1
  end

  bottom_up_array = Array.new(n + 1)
  #creates array with n + 1 slots, array[0] is disregarded
  bottom_up_array[1] = 1
  bottom_up_array[2] = 1

  for i in 3..(n) do
    bottom_up_array[i] = bottom_up_array[i - 1] + bottom_up_array[i - 2]
  end
  # case of fib (5), returns array of [nil, 1, 1, 2, 3, 5]
  return bottom_up_array[n]
  # u just want the last slot integer
end
