defmodule MyList do
  def max([head | tail]), do: _max(tail, head)

  defp _max([], current_max), do: current_max
  defp _max([head | tail], current_max) when head > current_max do
    _max(tail, head)
  end
  defp _max([_head | tail], current_max), do: _max(tail, current_max)
end

IO.puts MyList.max([0, 1, 4, 3, -5])