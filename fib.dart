// 508 ms

num fib (num n) => n < 2 ? n : fib(n - 1) + fib(n - 2);

void main() {
  Stopwatch sw = new Stopwatch()..start();
  fib(40);
  sw.stop();
  print('${sw.elapsedMilliseconds} ms');
}

