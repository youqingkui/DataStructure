// Generated by CoffeeScript 1.8.0
(function() {
  var a, dispArr, seqSearch;

  seqSearch = function(arr, data) {
    var i, _i, _len;
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      i = arr[_i];
      if (i === data) {
        return true;
      } else {
        return false;
      }
    }
  };

  dispArr = function(arr) {
    var k, rstr, v, _i, _len;
    rstr = "";
    for (k = _i = 0, _len = arr.length; _i < _len; k = ++_i) {
      v = arr[k];
      rstr += v + " ";
      if (k % 10 === 9) {
        rstr += '\n';
      }
    }
    return rstr;
  };

  a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];

  console.log(dispArr(a));

}).call(this);

//# sourceMappingURL=search.js.map
