defmodule Fibonacci do
  def nth(1), do: 1
  def nth(2), do: 1
  def nth(n), do: nth(n - 1) + nth(n - 2)
end

IO.puts Fibonacci.nth(40)
