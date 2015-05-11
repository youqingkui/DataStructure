// Generated by CoffeeScript 1.8.0
(function() {
  var Stack, fact;

  Stack = require('../stack');

  fact = function(n) {
    var product, s;
    s = new Stack();
    while (n > 1) {
      s.push(n--);
    }
    product = 1;
    while (s.length() > 0) {
      product *= s.pop();
    }
    return product;
  };

  console.log("5", fact(5));

}).call(this);

//# sourceMappingURL=fact.js.map
