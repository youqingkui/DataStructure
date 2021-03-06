// Generated by CoffeeScript 1.8.0
(function() {
  var Dancer, Queue, dance, femaleDancers, fs, getDancers, maleDancers;

  fs = require('fs');

  Queue = require('../queue');

  Dancer = (function() {
    function Dancer(name, sex) {
      this.name = name;
      this.sex = sex;
    }

    return Dancer;

  })();

  getDancers = function(males, females) {
    var dancer, i, name, names, sex, _i, _j, _len, _len1, _results;
    names = fs.readFileSync('dancers.txt').toString().split('\n');
    for (_i = 0, _len = names.length; _i < _len; _i++) {
      i = names[_i];
      i.trim();
    }
    _results = [];
    for (_j = 0, _len1 = names.length; _j < _len1; _j++) {
      i = names[_j];
      dancer = i.split(" ");
      sex = dancer[0];
      name = dancer[1];
      if (sex === 'F') {
        _results.push(females.enqueue(new Dancer(name, sex)));
      } else {
        _results.push(males.enqueue(new Dancer(name, sex)));
      }
    }
    return _results;
  };

  dance = function(males, females) {
    var person;
    console.log("The dance partners are: \n");
    while (!females.empty() && !males.empty()) {
      person = females.dequeue();
      console.log("Female dancer is: " + person.name);
      person = males.dequeue();
      console.log(" and the male dancer is: " + person.name);
    }
    return console.log("");
  };

  maleDancers = new Queue();

  femaleDancers = new Queue();

  getDancers(maleDancers, femaleDancers);

  dance(maleDancers, femaleDancers);

  if (!femaleDancers.empty()) {
    console.log(femaleDancers.front().name + " is waiting to dance.");
  }

  if (!maleDancers.empty()) {
    console.log(maleDancers.front().name + " is waiting to dance.");
  }

}).call(this);

//# sourceMappingURL=dancer.js.map
