class HashTable
  constructor:() ->
    @table = new Array(137)

    @simpleHash = (data) ->
      total = 0
      for i in data
        total += data.charCodeAt(i)

      console.log ("Hash value: " + data + " -> " + total)

      return total % this.table.length

    @betterHash = (data) ->
      H = 37
      total = 0
      for i in data
        total += H * total + data.charCodeAt(i)

      console.log ("Hash value: " + data + " -> " + total)
      total = total % @table.length
      return parseInt(total)


    @showDistro = ->
      for v, k in @table
        if v isnt undefined
          console.log k + ": " + v


    @put = (data) ->
      pos = @betterHash(data)
      @table[pos] = data
      return


module.exports = HashTable








