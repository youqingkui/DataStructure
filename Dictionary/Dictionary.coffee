class Dictionary
  constructor:() ->
    @datastore = new Array()


    @add = (key, val) ->
      @datastore[key] = val
      return

    @find = (key) ->
      @datastore[key]

    @remove = (key) ->
      delete @datastore[key]
      return

    @showAll = () ->
      for k, v of @datastore
        console.log k + " -> " + v

    @count = () ->
      n = 0
      for k of @datastore
        n++

      return n

    @clear = ->
      for v, k of @datastore
        delete @datastore[v]






module.exports = Dictionary








