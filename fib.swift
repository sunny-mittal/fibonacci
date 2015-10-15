func fibby(n : Int) -> Int {
  if n < 2 {
    return n
  }
  return fibby(n - 1)  + fibby(n - 2)
}

print(fibby(40))
