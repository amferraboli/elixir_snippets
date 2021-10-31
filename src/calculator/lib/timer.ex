defmodule Calculator.Timer do
  @moduledoc """
  Define a Timer module to handle sleeps.
  """

  @doc """
  Sleep for a while.

  ## Parameters
  - `seconds` - Number of seconds to sleep (default: 2 seconds).
  """
  def sleep(seconds \\ 2_000) do
    :timer.sleep(seconds)
  end
end
