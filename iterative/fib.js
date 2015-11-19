function fib(limit) {
  var m = 0, n = 1, i = 0, tmp
  while (i++ < limit) {
    tmp = m
    m = n
    n = m + tmp
  }
  return m
}

console.time('fib')
console.log(fib(1000))
console.timeEnd('fib')
