fib = (lim) ->
  m = 0
  n = 1
  i = 0
  while i++ < lim
    tmp = m
    m = n
    n = tmp + m
  m

console.time 'fib'
console.log fib 40
console.timeEnd 'fib'
