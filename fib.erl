-module(fib).
-export([fibby/1]).

fibby(1) -> 1;
fibby(2) -> 1;
fibby(N) -> fibby(N - 1) + fibby(N - 2).
