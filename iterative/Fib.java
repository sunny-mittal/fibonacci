public class Fib {
  public static void main(String[] args) {
    long start = System.currentTimeMillis();
    for (int i = 0; i < 10; i++) {
      nth(100);
    }
    long end = System.currentTimeMillis();
    System.out.printf("%d%n", end - start);
  }

  static int nth(int lim) {
    int m = 0, n = 1, tmp;
    for (int i = 0; i < lim; i++) {
      tmp = m;
      m = n;
      n = m + tmp;
    }
    return m;
  }
}
