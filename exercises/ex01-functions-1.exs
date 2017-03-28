list_concat = fn (list_1, list_2) -> list_1 ++ list_2 end
concated_list = list_concat.([:a, :b], [:c, :d])
IO.inspect(concated_list)

sum = fn (a, b, c) -> a + b + c end
IO.puts(sum.(1, 2, 3))

pair_tuple_to_list = fn (tuple) -> Tuple.to_list(tuple) end
list = pair_tuple_to_list.({1234, 5678})
IO.inspect(list)

