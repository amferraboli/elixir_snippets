defmodule App do
  def start(cities) do
    cities
    |> Enum.map(&(App.Weather.temperature_of(&1)))
  end
end
