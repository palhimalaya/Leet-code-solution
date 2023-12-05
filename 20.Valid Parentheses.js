/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {
  stack = []

 for(let c of s){
  if(c === '(' || c === '{' || c === '['){
      stack.push(c)
      
  }else{
      if(!stack.length || 
        (c === ')' && stack[stack.length - 1] !== '(')||
        (c === '}' && stack[stack.length - 1] !== '{')||
        (c === ']' && stack[stack.length - 1] !== '[')
      ){
            
          return false
      }
      stack.pop(c)
      
  }
 }
  
 return !stack.length
};