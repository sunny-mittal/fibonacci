function fib(limit) {
  var m = 0, n = 1, i = 0, tmp
  while (i++ < limit) {
    tmp = m; m = n; n = m + tmp
  }
  return m
}

console.time('fib')
for (var i = 0; i < 10; i++) {
  fib(100)
}
console.timeEnd('fib')
