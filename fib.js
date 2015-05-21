function fib(n) {
  return n < 2 ? n : fib(n - 1) + fib(n - 2);
}

console.time('fib');
fib(40);
console.timeEnd('fib');
