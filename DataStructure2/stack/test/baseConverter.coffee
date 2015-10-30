Stack = require('../stack')

baseConverter = (decNumber, base) ->
  remStack = new Stack()
  rem = ''
  baseString = ''
  digits = '0123456789ABCDEF'

  while decNumber > 0
    rem = Math.floor(decNumber % base)
    remStack.push(rem)
    decNumber = Math.floor(decNumber / base)


  while remStack.isEmpty() is false
    baseString += digits[remStack.pop()]



  return baseString


console.log(baseConverter(100345, 2))
console.log(baseConverter(100345, 8))
console.log(baseConverter(100345, 16))