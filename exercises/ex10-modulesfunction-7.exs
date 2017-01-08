# Convert float to string with two decimal digits
IO.puts Float.to_string(10.9910123, decimals: 2)

# OS Environmental variable
IO.inspect :os.type

# Print file extension
IO.puts Path.extname "asd.txt"

# PWD
System.cmd "pwd", [], into: IO.stream(:stdio, :line)

# JSON to Elixir https://github.com/cblage/elixir-json