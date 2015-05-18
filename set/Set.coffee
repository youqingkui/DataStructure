class Set
  constructor:() ->
    @dataStore = []

    @add = (data) ->
      if !(data in @dataStore)
        @dataStore.push data
        return true

      else
        return false

    @remove = (data) ->
      pos = @dataStore.indexOf(data)
      if pos > -1
        @dataStore.splice(pos, 1)
        return true

      else
        return false

    @size = () ->

    @union = () ->

    @intersect = () ->

    @subset = () ->

    @difference = () ->

    @show = () ->
      return @dataStore


module.exports = Set


