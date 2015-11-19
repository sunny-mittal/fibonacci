func fibby(lim : Int) -> Int {
  var m = 0, n = 1, tmp = 0
  for _ in 1...40 {
    tmp = m
    m = n
    n = m + tmp
  }
  return m
}

print(fibby(1000))
