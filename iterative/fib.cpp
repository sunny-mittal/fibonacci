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
  clock_t start = clock();
  std::cout << fib(1000) << std::endl;
  clock_t end = clock();
  std::cout << ((double) (end - start)) / CLOCKS_PER_SEC << std::endl;
  return 0;
}
