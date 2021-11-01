defmodule Calculator do
  @moduledoc """
  Define the Calculator module to handle the welcome screen
  and to start operations.
  """

  defp guidelines do
    IO.puts("Welcome to Elixir Calculator! It can help you with simple and complex calculations.")
    Calculator.Timer.sleep(1_00)
    IO.puts("Available functions:")
    Calculator.Timer.sleep()
    IO.puts("- Sum returns the sum of two elements.")
    Calculator.Timer.sleep()
    IO.puts("- Subtraction returns the difference of two elements.")
    Calculator.Timer.sleep()
    IO.puts("- Multiplication returns the product of two elements.")
    Calculator.Timer.sleep()
    IO.puts("- Division returns the quotient of two elements.")
    Calculator.Timer.sleep()
    IO.puts("- Power returns an element to the power of the other.")
    Calculator.Timer.sleep()
  end

  @doc """
  Print the guidelines and start a operation.
  """
  def start do
    guidelines()
    Calculator.Operation.begin_operation()
  end
end
