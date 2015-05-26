BST = require('../Node')

nums = new BST()
nums.insert(23)
nums.insert(45)
nums.insert(16)
nums.insert(37)
nums.insert(3)
nums.insert(99)
nums.insert(22)
console.log nums
console.log nums.root.show()
console.log "Inorder traversal: "

inOrder = (node) ->
  if node isnt null
    inOrder(node.left)
    console.log node.show()
    inOrder(node.right)


preOrder = (node) ->
  if node isnt null
    console.log node.show()
    preOrder(node.left)
    preOrder(node.right)


postOrder = (node) ->
  if node isnt null
    postOrder(node.left)
    postOrder(node.right)
    console.log node.show()

    

preOrder(nums.root)