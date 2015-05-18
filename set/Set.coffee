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
      @dataStore.length

    @union = (set) ->
      tempSet = new Set()
      for i in @dataStore
        tempSet.add(i)

      for i in set.dataStore
        if !(tempSet.contains(i))
          tempSet.dataStore.push(i)


      return tempSet

    @intersect = (set) ->
      tmpSet = new Set()
      for i in @dataStore
        if set.contains(i)
          tmpSet.add i

      return tmpSet

    @subset = (set) ->
      if @size() > set.size()
        return false

      else
        for i in @dataStore
          if !(set.contains(i))
            return false

        return true



    @difference = () ->

    @contains = (data) ->
      if data in @dataStore
        return true

      else
        return false

    @show = () ->
      return @dataStore


module.exports = Set


