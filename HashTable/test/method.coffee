HashTable = require('../HashTable')

someNames = ["David", "Jennifer", "Donnie", "Raymond",
             "Cynthia", "Mike", "Clayton", "Danny", "Jonathan"]


hTable = new HashTable()
for i in someNames
  hTable.put i


hTable.showDistro()