// Generated by CoffeeScript 1.8.0
(function() {
  var HashTable;

  HashTable = (function() {
    function HashTable() {
      this.table = new Array(137);
      this.simpleHash = function(data) {
        var i, total, _i, _len;
        total = 0;
        for (_i = 0, _len = data.length; _i < _len; _i++) {
          i = data[_i];
          total += data.charCodeAt(i);
        }
        console.log("Hash value: " + data + " -> " + total);
        return total % this.table.length;
      };
      this.betterHash = function(data) {
        var H, i, total, _i, _len;
        H = 37;
        total = 0;
        for (_i = 0, _len = data.length; _i < _len; _i++) {
          i = data[_i];
          total += H * total + data.charCodeAt(i);
        }
        console.log("Hash value: " + data + " -> " + total);
        total = total % this.table.length;
        return parseInt(total);
      };
      this.showDistro = function() {
        var k, v, _i, _len, _ref, _results;
        _ref = this.table;
        _results = [];
        for (k = _i = 0, _len = _ref.length; _i < _len; k = ++_i) {
          v = _ref[k];
          if (v !== void 0) {
            _results.push(console.log(k + ": " + v));
          } else {
            _results.push(void 0);
          }
        }
        return _results;
      };
      this.put = function(data) {
        var pos;
        pos = this.betterHash(data);
        this.table[pos] = data;
      };
    }

    return HashTable;

  })();

  module.exports = HashTable;

}).call(this);

//# sourceMappingURL=HashTable.js.map
