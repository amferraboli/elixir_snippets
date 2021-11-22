# Weather App

Parallel weather application.

## How to Run

Inside the folder, run:
`$ iex -S mix`
`$ ParallelApp.Weather.temperature_of "Rio de Janeiro"`

You can also run for multiple locations with:
`$ iex -S mix`
`$ locations = ["Vila Mariana, Sao Paulo", "Sao Paulo", "Brazil", "Rio de Janeiro", "Porto Alegre"]`
`$ ParallelApp.start(locations)`

## Documentation

You can access the module and methods documentation with `h` inside `iex`.
