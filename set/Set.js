// Generated by CoffeeScript 1.8.0
(function() {
  var Set,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  Set = (function() {
    function Set() {
      this.dataStore = [];
      this.add = function(data) {
        if (!(__indexOf.call(this.dataStore, data) >= 0)) {
          this.dataStore.push(data);
          return true;
        } else {
          return false;
        }
      };
      this.remove = function(data) {
        var pos;
        pos = this.dataStore.indexOf(data);
        if (pos > -1) {
          this.dataStore.splice(pos, 1);
          return true;
        } else {
          return false;
        }
      };
      this.size = function() {};
      this.union = function() {};
      this.intersect = function() {};
      this.subset = function() {};
      this.difference = function() {};
      this.show = function() {
        return this.dataStore;
      };
    }

    return Set;

  })();

  module.exports = Set;

}).call(this);

//# sourceMappingURL=Set.js.map