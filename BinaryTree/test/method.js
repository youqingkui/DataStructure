// Generated by CoffeeScript 1.8.0
(function() {
  var BST, inOrder, nums, postOrder, preOrder;

  BST = require('../Node');

  nums = new BST();

  nums.insert(23);

  nums.insert(45);

  nums.insert(16);

  nums.insert(37);

  nums.insert(3);

  nums.insert(99);

  nums.insert(22);

  console.log(nums);

  console.log(nums.root.show());

  console.log("Inorder traversal: ");

  inOrder = function(node) {
    if (node !== null) {
      inOrder(node.left);
      console.log(node.show());
      return inOrder(node.right);
    }
  };

  preOrder = function(node) {
    if (node !== null) {
      console.log(node.show());
      preOrder(node.left);
      return preOrder(node.right);
    }
  };

  postOrder = function(node) {
    if (node !== null) {
      postOrder(node.left);
      postOrder(node.right);
      return console.log(node.show());
    }
  };

  console.log(nums.getMin());

  console.log(nums.getMax());

}).call(this);

//# sourceMappingURL=method.js.map
