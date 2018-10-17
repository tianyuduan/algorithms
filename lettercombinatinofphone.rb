# Given a string containing digits from 2-9 inclusive,
#  return all possible letter combinations that the number could represent.
#
# A mapping of digit to letters (just like on the telephone buttons)
#  is given below. Note that 1 does not map to any letters.
#
#
#
# Example:
#
# Input: "23"
# Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf]


def letter_combinations(digits)
  return [] if digits == ''
  mapping = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

  for i in 0...digits.to_s.split('').count

    p i
  end


end


p letter_combinations(23);

0
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)

    return [] if digits == ''

  mapping = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

  solution = [""]

  for i in 0...digits.length
    digit = digits[i].to_i

    while solution[0].length == i
        combination = solution.shift
        mapping[digit].chars.each do |char|
            solution.push(combination + char)
        end
    end
  end

  solution

end
