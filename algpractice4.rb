Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Note that an empty string is also considered valid.
Example 1:
Input: "()"
Output: true


Example 2:
Input: "()[]{}"
Output: true


Example 3:
Input: "(]"
Output: false


Example 4:
Input: "([)]"
Output: false


Example 5:
Input: "{[]}"
Output: true

Example 6:
Input “([]) {}”
Output: true

Need to iterate the string
Ideally O(N)


Example 4:
Input: "([)]"
Output: false



Def StringValid(string)
	opening =
[“}“=>”{”,
 “)“=>”(”,
 “]“=>”[” ]
	Stack = []
string.split(‘’).each do |i|
Stack << i if Opening.include?(i)
If !(opening.include?(i))
	Pop = stack.pop
	return false if opening[i] != Pop
end
end
Return true If stack == nil
false
end
