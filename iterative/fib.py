def fib(limit):
  m, n = 0, 1
  for i in range(0, limit):
    m, n = n, m + n
  print(m)

if __name__ == '__main__':
  import timeit
  print(timeit.timeit("fib(1000)", setup="from __main__ import fib", number=1))
