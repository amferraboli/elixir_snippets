defmodule ParallelApp do
  def start(cities) do
    manager_pid = spawn(__MODULE__, :manager, [[], Enum.count(cities)])
    
    fn_temperature =
      fn city ->
        pid = spawn(ParallelApp.Weather, :get_temperature, [])
        send(pid, {manager_pid, city})
      end

    cities
    |> Enum.map(fn_temperature)
  end

  def manager(cities \\ [], total) do
    receive do
      {:ok, temp} ->
        results = [ temp | cities ]
        if(Enum.count(results) == total) do
          send(self(), :exit)
        end
        manager(results, total)
      :exit ->
        cities
        |> Enum.sort
        |> Enum.join(", ")
        |> IO.puts
      _ ->
        manager(cities, total)
    end
  end
end
