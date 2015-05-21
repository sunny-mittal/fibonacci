require 'benchmark'

class Fibonacci
  def self.nth(n)
    return n < 2 ? n : nth(n - 1) + nth(n - 2)
  end
end

p Benchmark.measure { Fibonacci.nth 40 }
