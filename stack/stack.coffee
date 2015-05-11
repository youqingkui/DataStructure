class Stack
  constructor:() ->
    @dataStore = []
    @top = 0


  push:(element) ->
    @dataStore[@top++] = element


  pop:() ->
    @dataStore[--@top]


  peek:() ->
    @dataStore[@top - 1]


  length:() ->
    @top


  clear:() ->
    @top = 0



s = new Stack()

s.push("David")
s.push("Raymond")
s.push("Bryan")
console.log "s =>", s

console.log "s.length()", s.length()
console.log "s.peek()", s.peek()
console.log "s.pop()", s.pop()
console.log "s ==>", s