class Node
  constructor:(@element) ->

    @next = null
    @previous = null




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
      newNode.previous = current
      current.next = newNode
      return


    @remove = (item) ->
#      prevNode = this.findPrevious(item)
#      unless (prevNode.next == null)
#        prevNode.next = prevNode.next.next
      currNode = @.find(item)
      if currNode.next isnt null
        currNode.previous.next = currNode.next
        currNode.next.previous = currNode.previous
        currNode.next = null
        currNode.previous = null



    @findLast = () ->
      currNode = @.head
      while currNode.next isnt null
        currNode = currNode.next

      return currNode



    @display = () ->
      currNode = @.head
      while !(currNode.next == null)
        console.log(currNode.next.element)
        currNode = currNode.next


    @dispReverse = () ->
      currNode = @.head
      currNode = @.findLast()
      while currNode.previous isnt null
        console.log currNode.element
        currNode = currNode.previous








cities = new LList();
cities.insert("Conway", "head");
cities.insert("Russellville", "Conway");
cities.insert("Carlisle", "Russellville");
cities.insert("Alma", "Carlisle");
cities.display();
console.log("");
cities.remove("Carlisle");
cities.display();
console.log("");
cities.dispReverse();








