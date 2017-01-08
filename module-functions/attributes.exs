defmodule Example do
  @author "Chris Paterson"
  def get_author do
    @author
  end
end

IO.puts "Example was written by #{Example.get_author}"

# Note: In general, attributes should be used similar to Java constants.