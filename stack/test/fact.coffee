Stack = require('../stack')

fact = (n) ->
  s = new Stack()
  while n > 1
    s.push(n--)

  product = 1

  while s.length() > 0
    product *= s.pop()


  return product


console.log "5", fact(5)