defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square tail]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1 tail]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], acc, _func), do: acc
  def reduce([head | tail], acc, func) do
    reduce(tail, func.(head, acc), func)
  end

  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, total + head)
end

IO.puts MyList.len([3, 2, 1, :blastoff])
IO.inspect MyList.square([3, 2, 1])
IO.inspect MyList.add_1([3, 2, 1, 0])

IO.inspect MyList.map [1, 5, 10], &(&1 * &1)

IO.puts MyList.reduce([1, 2, 3, 4, 5], 1, &(&1 * &2))

IO.puts MyList.sum([3, 2, 1])
