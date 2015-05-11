Queue = require('../queue')


q = new Queue()

q.enqueue('1')
q.enqueue 2
q.enqueue 3

console.log q.toString()

q.dequeue()

console.log q.toString()

console.log "Front of queue: ", q.front()
console.log "Back of queue: ", q.back()