// Generated by CoffeeScript 1.8.0
(function() {
  var BST, Node;

  Node = (function() {
    function Node(data, left, right) {
      this.data = data;
      this.left = left;
      this.right = right;
      this.show = function() {
        return this.data;
      };
    }

    return Node;

  })();

  BST = (function() {
    function BST() {
      this.root = null;
      this.insert = function(data) {
        var current, n, parent, _results;
        n = new Node(data, null, null);
        if (this.root === null) {
          return this.root = n;
        } else {
          current = this.root;
          parent = '';
          _results = [];
          while (true) {
            parent = current;
            if (data < current.data) {
              current = current.left;
              if (current === null) {
                parent.left = n;
                break;
              } else {
                _results.push(void 0);
              }
            } else {
              current = current.right;
              if (current === null) {
                parent.right = n;
                break;
              } else {
                _results.push(void 0);
              }
            }
          }
          return _results;
        }
      };
      this.inOrder = function(node) {
        if (node !== null) {
          this.inOrder(node.left);
          console.log(node.show());
          return inOrder(node.right);
        }
      };
    }

    return BST;

  })();

}).call(this);

//# sourceMappingURL=Node.js.map
