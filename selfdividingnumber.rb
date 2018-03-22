# # A self-dividing number is a number that is divisible by every digit it contains.
# #
# # For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
# #
# # Also, a self-dividing number is not allowed to contain the digit zero.
# #
# # Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
# #
# # Example 1:
# # Input:
# # left = 1, right = 22
# # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
# # Note:
# #
# # The boundaries of each input argument are 1 <= left <= right <= 10000.
# #
# #
# def self_dividing_numbers(left, right)
#   arr = []
#
#   range = (left..right).to_a
#   range.each do |i|
#     i.to_s.split('').each do |j|
#       # p i
#       # p j.to_i
#       arr << i if i % (j.to_i) == 0
#     end
#   end
#   arr
# end
#
#
# # self_dividing_numbers(1,22)
# #
# p self_dividing_numbers(1, 22)
#
#  # 524.to_s.split('').each do |i|
#
# # end
# p '22'.to_i


def self_dividing_numbers(left, right)
  result = []
    i = left
    while i <= right #while i is smaller than right bound
        str = i.to_s #coverts all int to string
        j = 0
        c = 0
        while j < str.length
            if str[j].to_i == 0
                break
            elsif i % str[j].to_i == 0
                c+= 1
            end
            j+= 1
        end
        if c == str.length
            result.push(i)
        end
        i+=1
    end
    return result
end

 p self_dividing_numbers(1, 22)
