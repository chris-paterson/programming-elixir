defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square tail]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1 tail]
end

IO.puts MyList.len([3, 2, 1, :blastoff])
IO.inspect MyList.square([3, 2, 1])
IO.inspect MyList.add_1([3, 2, 1, 0])