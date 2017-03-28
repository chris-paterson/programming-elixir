defmodule MyMap do
  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end

IO.inspect MyMap.map [1, 5, 10], &(&1 * &1)