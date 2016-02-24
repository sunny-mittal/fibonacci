require "time"
t = Time.new
print t.second, " ", t.millisecond, "\n"

def fib(n)
  return 1 if n == 1 || n == 2
  return fib(n - 1) + fib(n - 2)
end

puts fib 40

t = Time.new
print t.second, " ", t.millisecond, "\n"
