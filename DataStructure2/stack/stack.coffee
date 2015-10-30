class Stack
  constructor:() ->
    @items = []


  push:(element) ->
    @items.push(element)


  pop:() ->
    @items.pop()

  # 返回栈顶的元素
  peek:() ->
    @items[@items.length - 1]


  isEmpty:() ->
    @items.length is 0


  size:() ->
    @items.length


  clear:() ->
    @items = []


  print:() ->
    console.log(@items.toString())


module.exports = Stack



