def fib(limit):
  m, n = 0, 1
  for i in range(0, limit):
    m, n = n, m + n
  print(m)

def ten_fib(limit):
  for i in range(1, 10):
    fib(limit)

if __name__ == '__main__':
  import timeit
  print(timeit.timeit("ten_fib(100)", setup="from __main__ import ten_fib", number=1))
