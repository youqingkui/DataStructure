Stack = require('../stack')

divideBy2 = (decNumber) ->
  remStack = new Stack()
  binaryString = ''
  rem = ''

  while decNumber > 0
    rem = Math.floor(decNumber % 2)
    remStack.push(rem)
    decNumber = Math.floor(decNumber / 2)


  while remStack.isEmpty() is false
    binaryString += remStack.pop().toString()


  return binaryString


console.log(divideBy2(233))
console.log(divideBy2(10))
console.log(divideBy2(1000))

