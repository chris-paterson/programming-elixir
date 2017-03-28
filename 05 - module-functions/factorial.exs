defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

IO.puts(Factorial.of(5))

# Breaks, see factorial-2.exs for fix.
# IO.puts(Factorial.of(5))