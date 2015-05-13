fs = require('fs')
Queue = require('../queue')

class Dancer
  constructor:(@name, @sex) ->


getDancers = (males, females) ->
  names = fs.readFileSync('dancers.txt').toString().split('\n')
  for i in names
    i.trim()

  for i in names
    dancer = i.split(" ")
    sex = dancer[0]
    name = dancer[1]
    if sex is 'F'
      females.enqueue(new Dancer(name, sex))

    else
      males.enqueue(new Dancer(name, sex))


dance = (males, females) ->
  console.log "The dance partners are: \n"
  while(!females.empty() && !males.empty())
    person = females.dequeue()
    console.log "Female dancer is: " + person.name
    person = males.dequeue()
    console.log(" and the male dancer is: " + person.name)

  console.log ""



maleDancers = new Queue()
femaleDancers = new Queue()

getDancers(maleDancers, femaleDancers)
dance(maleDancers, femaleDancers)
if !femaleDancers.empty()
  console.log femaleDancers.front().name + " is waiting to dance."

if !maleDancers.empty()
  console.log maleDancers.front().name + " is waiting to dance."






