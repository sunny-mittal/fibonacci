public class Fib {
  public static void main(String[] args) {
    long start = System.currentTimeMillis();
    nth(40);
    long end = System.currentTimeMillis();
    System.out.printf("%d%n", end - start);
  }

  static int nth(int n) {
    return n < 2 ? n : nth(n - 1) + nth(n - 2);
  }
}
