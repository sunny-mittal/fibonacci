#include <stdio.h>
#include <time.h>

int fib(int n)
{
  return n < 2 ? n : fib(n - 1) + fib(n - 2);
}

int main()
{
  clock_t start = clock(), diff;
  fib(40);
  diff = clock() - start;

  int msec = diff * 1000 / CLOCKS_PER_SEC;

  printf("%d\n", msec);
  return 0;
}
