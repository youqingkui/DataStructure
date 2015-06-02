seqSearch = (arr, data) ->
  for i in arr
    if i is data
      return true

    else
      return false



dispArr = (arr) ->
  rstr = ""
  for v, k in arr
    rstr += v + " "
    if k % 10 is 9
      rstr += '\n'

  return rstr


a = [1..20]
console.log dispArr(a)



