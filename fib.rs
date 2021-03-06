use std::env;

fn fib<F>(n: u64, f: F) -> (u64, u64) where F: Fn(u64) {
  if n == 0 {
    f(0);
    (0, 1)
  } else {
    let mut n1:u64 = 0;
    let mut n2: u64 = 1;

    for _i in (0..n) {
      f(n1);
      let tmp = n1 + n2;
      n1 = n2;
      n2 = tmp;
    }
    (n2 - n1, n)
  }
}

fn main() {
  let args: Vec<String> = env::args().collect();
  let default_n = 10u64;
  let n = match args.len() {
    1 => default_n,
    _ => args[1].parse().unwrap_or(default_n)
  };

  let (result, n) = fib(n, |num| { print!("{} ", num); });
  println!("\nThe {}th fibonacci number is: {}", n, result);
}
