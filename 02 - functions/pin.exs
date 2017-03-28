defmodule Greeter do
  def for(name, greeting) do
    fn 
      (^name) ->"#{greeting} #{name}" # the caret is used for pinning
      (_) -> "I don't know you"
    end
  end
end

mr_valim = Greeter.for('James', 'Oi!')
IO.puts mr_valim.('James')
IO.puts mr_valim.('Matt')