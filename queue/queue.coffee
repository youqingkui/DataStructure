class Queue
  constructor:() ->
    @dataStore = []

    @enqueue = (element) ->
      @dataStore.push element


    @dequeue = () ->
      @dataStore.shift()


    @firstDequeue = () ->
      entry = 0
      for v, k in @dataStore
        if v.code < @dataStore[entry].code
          entry = k

      @dataStore.splice(entry, 1)


    @front = () ->
      @dataStore[0]


    @back = () ->
      @dataStore[@dataStore.length - 1]


    @toString = () ->
      retStr = ""
      for i in @dataStore
        retStr += i + '\n'

      return retStr


    @toString2 = () ->
      retStr = ""
      for i in @dataStore
        retStr += i.name + " code: " + i.code + "\n"


      return retStr



    @empty = () ->
      if @dataStore.length is 0
        return true

      return false


    @count = () ->
      @dataStore.length



module.exports = Queue

