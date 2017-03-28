defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([ [time, 27, temp, rain] | tail ]) do
    [ [time, 27, temp, rain] | for_location_27(tail) ]
  end
  def for_location_27([ _ | tail ]), do: for_location_27(tail)

  def for_location([], _location), do: []
  def for_location([ head = [_, location, _, _] | tail], location) do
    [ head | for_location(tail, location)]
  end
  def for_location([ _ | tail ], location), do: for_location(tail, location)


  def test_data do 
    [
      ["1300", 26, 14, :High],
      ["1300", 27, 30, :Low],
      ["1310", 27, 33, :Low],
      ["1310", 21, 33, :Low]
    ]
  end
end