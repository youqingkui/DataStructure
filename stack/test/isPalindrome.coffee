Stack = require('../stack')

isPalindrome = (word) ->
  s = new Stack()
  for i in word
    s.push i

  rword = ''
  while s.length()
    rword += s.pop()

  if word != rword
    return false

  return true




word = "hello"
word2 = "racecar"
console.log "#{word}", isPalindrome(word)
console.log "#{word2}", isPalindrome(word2)
