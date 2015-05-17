class HashTable
  constructor:() ->
    @table = new Array(137)

    @simpleHash = (data) ->
      total = 0
      for i in data
        total += data.charCodeAt(i)

      console.log ("Hash value: " + data + " -> " + total)

      return total % this.table.length

    @showDistro = ->
      for v, k in @table
        if v isnt undefined
          console.log k + ": " + v


    @put = (data) ->
      pos = @simpleHash(data)
      @table[pos] = data
      return


module.exports = HashTable








