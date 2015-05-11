class Queue
  constructor:() ->
    @dataStore = []

    @enqueue = (element) ->
      @dataStore.push element


    @dequeue = () ->
      @dataStore.shift()


    @front = () ->
      @dataStore[0]


    @back = () ->
      @dataStore[@dataStore.length - 1]


    @toString = () ->
      retStr = ""
      for i in @dataStore
        retStr += i + '\n'

      return retStr



    @empty = () ->
      if @dataStore.length is 0
        return true

      return false


module.exports = Queue

