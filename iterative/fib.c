#include <stdio.h>
#include <time.h>

int fib(int lim)
{
  int m = 0, n = 1, i = 0, tmp;
  for (; i < lim; i++) {
    tmp = m;
    m = n;
    n = m + tmp;
  }
  return m;
}

int main()
{
  clock_t start = clock(), diff;
  printf("%d\n", fib(40));
  diff = clock() - start;

  int msec = diff * 1000 / CLOCKS_PER_SEC;

  printf("%d\n", msec);
  return 0;
}
