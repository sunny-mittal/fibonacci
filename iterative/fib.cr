require "benchmark"

def fib(n)
  n, a, b = n - 2, 1_i64, 1_i64
  n.times { a, b = b, a + b }
  return a
end

puts Benchmark.measure { 10.times { fib 100 } }
