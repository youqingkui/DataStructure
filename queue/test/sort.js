// Generated by CoffeeScript 1.8.0
(function() {
  var Queue, collect, dispArray, distribute, i, nums, queues;

  Queue = require('../queue');

  distribute = function(nums, quenues, n, digit) {
    var i, _results;
    i = 0;
    _results = [];
    while (i < n) {
      if (digit === 1) {
        quenues[nums[i] % 10].enqueue(nums[i]);
      } else {
        quenues[Math.floor(nums[i] / 10)].enqueue(nums[i]);
      }
      _results.push(i++);
    }
    return _results;
  };

  collect = function(queues, nums) {
    var digit, i, _results;
    i = 0;
    digit = 0;
    _results = [];
    while (digit < 10) {
      while (!queues[digit].empty()) {
        nums[i++] = queues[digit].dequeue();
      }
      _results.push(digit++);
    }
    return _results;
  };

  dispArray = function(arr) {
    return console.log(arr);
  };

  queues = [];

  i = 0;

  while (i < 10) {
    queues[i] = new Queue();
    i++;
  }

  nums = [];

  i = 0;

  while (i < 10) {
    nums[i] = Math.floor(Math.floor(Math.random() * 101));
    i++;
  }

  console.log("Before radix sort: ");

  dispArray(nums);

  distribute(nums, queues, 10, 1);

  collect(queues, nums);

  distribute(nums, queues, 10, 10);

  collect(queues, nums);

  console.log("\n\nAfter radix sort: ");

  dispArray(nums);

}).call(this);

//# sourceMappingURL=sort.js.map