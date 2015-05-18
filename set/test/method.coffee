Set = require('../Set')

#names = new Set()
#names.add("David")
#names.add("Jennifer")
#names.add("Cynthia")
#names.add("Mike")
#names.add("Raymond")
#if names.add "Mike"
#  console.log "Mike added"
#else
#  console.log "Can't add Mike, must already be in set"
#
#
#console.log names.show()
#
#removed = "Mike"
#if names.remove(removed)
#  console.log removed + " removed."
#
#else
#  console.log removed + " not removed."
#
#
#names.add "Clayton"
#console.log names.show()
#
#removed = "Alisa"
#if names.remove(removed)
#  console.log removed + " removed."
#
#else
#  console.log removed + " not removed."


cis = new Set()
cis.add("Mike")
cis.add("Clayton")
cis.add("Jennifer")
cis.add("Raymond")
console.log "cis =>", cis.show()

dmp = new Set()
dmp.add("Raymond")
dmp.add("Cynthia")
dmp.add("Jonathan")

console.log "dmp =>", dmp.show()

it = new Set()
it = cis.intersect(dmp)
console.log (it.show())
