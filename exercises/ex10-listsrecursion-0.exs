# Sum without acc.
defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

IO.puts MyList.sum([3, 2, 1])