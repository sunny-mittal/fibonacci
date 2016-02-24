require "time"
t = Time.new
print t.second, " ", t.millisecond, "\n"

def fib(n)
  n, a, b = n - 2, 1_i64, 1_i64
  n.times do
    a, b = b, a + b
  end
  return a
end

puts fib 1000

t = Time.new
print t.second, " ", t.millisecond, "\n"
