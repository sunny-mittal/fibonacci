#include <ctime>
#include <iostream>

int fib(int limit)
{
  int m = 0, n = 1, i = 0, tmp;
  for (; i < limit; i++) {
    tmp = m;
    m = n;
    n = m + tmp;
  }
  return m;
}

int main()
{
  clock_t start = clock(), diff;
  for (int i = 0; i < 10; i++) {
    fib(100);
  }
  diff = clock() - start;
  std::cout << ((double) diff) / CLOCKS_PER_SEC << std::endl;
  return 0;
}
