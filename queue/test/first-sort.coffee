Queue = require('../queue')


class Patient
  constructor:(@name, @code) ->


ed = new Queue()

p = new Patient("Smith",5)
ed.enqueue(p)

p = new Patient("Jones", 4)
ed.enqueue(p)

p = new Patient("Fehrenbach", 6)
ed.enqueue(p)

p = new Patient("Brown", 1)
ed.enqueue(p)

p = new Patient("Ingram", 1)
ed.enqueue(p)

console.log ed.toString2()

seen = ed.firstDequeue()
console.log "Patient being treated: " + seen[0].name
console.log "Patients waiting to be seen: "
console.log ed.toString2()


seen = ed.firstDequeue()
console.log("Patient being treated: " + seen[0].name)
console.log "Patients waiting to be seen: "
console.log ed.toString2()


seen = ed.firstDequeue()
console.log("Patient being treated: " + seen[0].name)
console.log "Patients waiting to be seen: "
console.log ed.toString2()


