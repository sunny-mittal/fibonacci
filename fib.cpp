#include <ctime>
#include <iostream>

int fib(int n)
{
  return n < 2 ? n : fib(n - 1) + fib(n - 2);
}

int main()
{
  clock_t start = clock();
  fib(40);
  clock_t end = clock();
  std::cout << ((double) (end - start)) / CLOCKS_PER_SEC << std::endl;
  return 0;
}
