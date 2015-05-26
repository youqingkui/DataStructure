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




module.exports = BST

