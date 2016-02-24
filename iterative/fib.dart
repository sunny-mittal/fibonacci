num fib (num limit) {
  int m = 0, n = 1, i = 0, tmp;
  for (; i < limit; i++) {
    tmp = m; m = n; n = m + tmp;
  }
  return m;
}

void main() {
  Stopwatch sw = new Stopwatch()..start();
  for (int i = 0; i < 10; i++) {
      fib(100);
  }
  sw.stop();
  print('${sw.elapsedMilliseconds} ms');
}
