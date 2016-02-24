for i <- 1..10 do
  IO.puts i
  List.last(Stream.unfold({ 1, 1 },
    fn { f1, f2 } -> { f1, { f2, f1 + f2 } } end)
    |> Enum.take(100))
end
