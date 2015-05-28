class CArray
  constructor:(@numElements) ->
    @dataStore = []
    @pos = 0

    i = 0
    while i < @numElements
      @dataStore[i] = i
      i++



  insert:(element) ->
    @dataStore[@pos++] = element


  toString:() ->
    restr = ''
    for i, k in @dataStore
      restr += i + " "
      if k > 0 & k % 10 is 0
        restr += '\n'

    return restr

  clear: () ->
    for i in @dataStore
      i = 0


  setData: () ->
    i = 0
    while i < @numElements
      @dataStore[i] = Math.floor(Math.random() * (@numElements + 1))
      i++
    return


  swap:(arr, index1, index2) ->
    temp = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = temp
    return


  bubbleSort: ->
    numElements = @dataStore.length
    outer = numElements
    while outer >= 2
      inner = 0
      while inner <= outer - 1
        if @dataStore[inner] > @dataStore[inner + 1]
          @swap(@dataStore, inner, inner + 1)

        inner++

      outer--


numElements = 4
myNums = new CArray(numElements)
myNums.setData()
myNums.bubbleSort()
console.log myNums.toString()

