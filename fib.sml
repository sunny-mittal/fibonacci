fun fib 1 = 1
  | fib 2 = 1
  | fib n = fib(n - 1) + fib(n - 2);

val _ =
  let
    val t = Timer.startCPUTimer()
  in
    fib 40;
    print (Time.toString(#usr(Timer.checkCPUTimer(t)))  ^ "\n")
  end;
