Stack = require('../stack')

s = new Stack()

s.push("David")
s.push("Raymond")
s.push("Bryan")
console.log "s =>", s

console.log "s.length()", s.length()
console.log "s.peek()", s.peek()
console.log "s.pop()", s.pop()
console.log "s ==>", s