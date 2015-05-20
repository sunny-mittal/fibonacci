# 38,419 ms

def fib(n):
  return n if n < 2 else fib(n - 1) + fib(n - 2)

if __name__ == '__main__':
  import timeit
  print(timeit.timeit("fib(40)", setup="from __main__ import fib", number=1))
