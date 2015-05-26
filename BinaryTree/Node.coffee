class Node
  constructor:(@data, @left, @right) ->


    @show = () ->
      @data




class BST
  constructor:() ->
    @root = null

    @insert = (data) ->
      n = new Node(data, null, null)
      if @root is null
        @root = n

      else
        current = @root
        parent = ''
        while true
          parent = current
          if data < current.data
            current = current.left
            if current is null
              parent.left = n
              break

          else
            current = current.right
            if current is null
              parent.right = n
              break


    @getMin = () ->
      current = @.root
      while current.left isnt null
        current = current.left

      current.data


    @getMax = () ->
      current = @.root
      while current.right isnt null
        current = current.right


      current.data


    @find = (data) ->
      current = @.root
      while current isnt null
        if current.data is data
          return current

        else if data < current.data
          current = current.left
        else
          current = current.right


      return null






module.exports = BST

