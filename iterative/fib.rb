require 'benchmark'

class Fibonacci
  def self.nth(n)
    x, y = 0, 1
    n.times { x, y = y, x + y }
    puts x
  end
end

p Benchmark.measure { Fibonacci.nth 40 }
