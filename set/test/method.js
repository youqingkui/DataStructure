// Generated by CoffeeScript 1.8.0
(function() {
  var Set, cis, dmp, it;

  Set = require('../Set');

  cis = new Set();

  cis.add("Mike");

  cis.add("Clayton");

  cis.add("Jennifer");

  cis.add("Raymond");

  console.log("cis =>", cis.show());

  dmp = new Set();

  dmp.add("Raymond");

  dmp.add("Cynthia");

  dmp.add("Jonathan");

  console.log("dmp =>", dmp.show());

  it = new Set();

  it = cis.intersect(dmp);

  console.log(it.show());

}).call(this);

//# sourceMappingURL=method.js.map
