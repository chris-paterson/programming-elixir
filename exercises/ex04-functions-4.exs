prefix = fn
  (prefix) -> fn
    (rest_of_string) -> "#{prefix} #{rest_of_string}"
  end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts(prefix.("Elixir").("Rocks"))
