Stack = require('../stack')

mulBase = (num, base) ->
  s = new Stack()
  loop
    s.push(num % base)
    num = Math.floor(num /= base)

    break if num <= 0

  converted = ""
  while s.length() > 0
    converted += s.pop()

  return converted




newNum = mulBase(125, 8)
console.log newNum