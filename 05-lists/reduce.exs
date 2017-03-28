defmodule MyList do
  def reduce([], acc, _func), do: acc
  def reduce([head | tail], acc, func) do
    reduce(tail, func.(head, acc), func)
  end
end

IO.puts MyList.reduce([1, 2, 3, 4, 5], 1, &(&1 * &2))