// Generated by CoffeeScript 1.8.0
(function() {
  var Stack;

  Stack = (function() {
    function Stack() {
      this.dataStore = [];
      this.top = 0;
    }

    Stack.prototype.push = function(element) {
      return this.dataStore[this.top++] = element;
    };

    Stack.prototype.pop = function() {
      return this.dataStore[--this.top];
    };

    Stack.prototype.peek = function() {
      return this.dataStore[this.top - 1];
    };

    Stack.prototype.length = function() {
      return this.top;
    };

    Stack.prototype.clear = function() {
      return this.top = 0;
    };

    return Stack;

  })();

  module.exports = Stack;

}).call(this);

//# sourceMappingURL=stack.js.map
