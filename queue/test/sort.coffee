Queue = require('../queue')

distribute = (nums, quenues, n, digit) ->
  i = 0
  while i < n
    if digit is 1
      quenues[nums[i] % 10].enqueue(nums[i])

    else
      quenues[Math.floor(nums[i] / 10)].enqueue(nums[i])

    i++


collect = (queues, nums) ->
  i = 0
  digit = 0
  while digit < 10
    while !queues[digit].empty()
      nums[i++] = queues[digit].dequeue()


    digit++



dispArray = (arr) ->
  console.log arr




queues = []
i = 0
while i < 10
  queues[i] = new Queue()
  i++

nums = []

i = 0
while i < 10
  nums[i] = Math.floor(Math.floor(Math.random() * 101))
  i++

console.log "Before radix sort: "
dispArray(nums)
distribute(nums, queues, 10, 1)
collect(queues, nums)
distribute(nums, queues, 10, 10)
collect(queues, nums)
console.log "\n\nAfter radix sort: "
dispArray(nums)

