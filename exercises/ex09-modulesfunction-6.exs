defmodule Chop do
  def guess(actual, range) do
    midpoint = range.first + div(range.last - range.first, 2)
    IO.puts("Is it #{midpoint}?")
    guess(actual, range, midpoint)
  end

  def guess(actual, _, midpoint) when midpoint == actual do
    IO.puts(midpoint)
  end

  def guess(actual, range, midpoint) when midpoint > actual do
    guess(actual, range.first..midpoint)
  end

  def guess(actual, range, midpoint) when midpoint < actual do
    guess(actual, midpoint..range.last)
  end
end

IO.puts Chop.guess(273, 1..1000)