fib = (lim) ->
  m = 0; n = 1; i = 0
  while i++ < lim
    tmp = m; m = n; n = tmp + m
  return m

console.time 'fib'
for i in [1 to 10]
  fib 100
console.time-end 'fib'
