const letterCombinations = function (digits) {
  // FOR DFS we are using Stacks, and popping the array off
   const dictionary = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"];
   let result = []
   if (digits == undefined){
     return 'enter valid phone number';
   }

   function dfs(current, digit) {

   }

};

console.log(letterCombinations());


var letterCombinations = function(digits) {
    const dictionary = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"];
    let result = [];
    if(digits == "") {
        return result;
    }
    function dfs(current, digit) {
        if(digit == digits.length){
            result.push(current);
            return;
        }
        let currentDigit = digits.charAt(digit);
        let str = dictionary[parseInt(currentDigit)];
        for(let i = 0; i < str.length; i++) {
            dfs(current.concat(str.charAt(i)), digit + 1);
        }
    }

    dfs("", 0);
    return result;
};
