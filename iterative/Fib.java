public class Fib {
  public static void main(String[] args) {
    long start = System.currentTimeMillis();
    System.out.println(nth(1000));
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
