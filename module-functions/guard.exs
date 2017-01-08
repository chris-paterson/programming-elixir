defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts("#{x} is a number")
  end

  def what_is(x) when is_list(x) do
    IO.puts("#{inspect(x)} is a list")
  end

  def what_is(x) when is_atom(x) do
    IO.puts("#{x} is an atom")
  end
end

IO.puts(Guard.what_is(-10))
IO.puts(Guard.what_is(:okiedokie))
IO.puts(Guard.what_is([3, 2, 1, :blastoff]))