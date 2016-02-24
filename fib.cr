require "benchmark"

def fib(n)
  return 1 if n == 1 || n == 2
  return fib(n - 1) + fib(n - 2)
end

puts Benchmark.measure { fib 40 }
