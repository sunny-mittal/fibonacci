fn fib(n: i32) -> i32 {
  if n == 0 { return 0; }
  if n == 1 { return 1; }
  fib(n - 1) + fib(n - 2)
}

fn main() {
  println!("40th fibonacci number is {}", fib(40));
}
