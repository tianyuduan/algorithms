what is a closure and why would you use one?

Normally you access a variable once the function has returned

function notaclosure() {
  const shortlivedvariable = 'im here for a while';
  return shortlivedvariable;
}


notAClosure(); // returns "I'm only here for a little while"

notice nothing has access to the variable const after it is run;

function aClosure() {
const longLivedVariable = "I'm here for a long time";
  const innerFunction = function inner() {
    return longLivedVariable;
  };
  return innerFunction;
}

returns a reference to the innerFunction;

this way closure can be used to save state;
