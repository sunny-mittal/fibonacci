# 1,262 ms

fib = (n) ->
  if n < 2 then n else fib(n - 1) + fib(n - 2)

console.time 'fib'
fib 40
console.timeEnd 'fib'
