class Node
  constructor:(@element) ->

    @next = null




class LList
  constructor:() ->

    @head = new Node("head")

    @find = (item) ->
      currNode = @head
      while currNode.element != item
        currNode = currNode.next

      return currNode

    @findPrevious = (item) ->
      currNode = @.head
      while (!(currNode.next is null)) and (currNode.next.element != item)
        currNode = currNode.next

      return currNode



    @insert = (newElement, item) ->
      newNode = new Node(newElement)
      current = @.find(item)
      newNode.next = current.next
      current.next = newNode
      return


    @remove = (item) ->
      prevNode = this.findPrevious(item)
      unless (prevNode.next == null)
        prevNode.next = prevNode.next.next



    @display = () ->
      currNode = @.head
      while !(currNode.next == null)
        console.log(currNode.next.element)
        currNode = currNode.next





cities = new LList()
cities.insert("Conway", "head")
cities.insert("Russellville", "Conway")
cities.insert("Carlisle", "Russellville")
cities.insert("Alma", "Carlisle")
cities.display()
cities.remove("Carlisle")
cities.display()









