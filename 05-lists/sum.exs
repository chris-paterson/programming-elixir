defmodule MyList do
  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, total+head)
end

IO.puts MyList.sum([3, 2, 1], 0)