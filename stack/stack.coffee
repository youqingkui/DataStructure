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



module.exports = Stack
