IO.puts List.last(Stream.unfold({ 1, 1 }, fn { f1, f2 } -> { f1, { f2, f1 + f2 } } end) |> Enum.take(40))
