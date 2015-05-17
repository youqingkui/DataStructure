Dictionary = require('../Dictionary')

pbook = new Dictionary()

pbook.add("Mike","123")
pbook.add("David", "345")
pbook.add("Cynthia", "456")
console.log("David's extension: " + pbook.find("David"))
console.log "Number of entries: " + pbook.count()
pbook.remove("David")
pbook.showAll()
pbook.showAll2()
pbook.clear()
console.log "Number of entries: " + pbook.count()

