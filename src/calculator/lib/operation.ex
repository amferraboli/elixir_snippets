defmodule Calculator.Operation do
  @moduledoc """
  Define a Operation module to handle the Calculator logic.
  """

  defp choose_number(message) do
    n =
      IO.gets(message)
      |> String.trim()

    case Float.parse(n) do
      :error ->
        IO.puts("Sorry, invalid number. Please, choose another number.")
        choose_number(message)
      {n_parsed, ""} ->
        n_parsed
      {_, _} ->
        IO.puts("Sorry, invalid number. Please, choose another number.")
        choose_number(message)
    end
  end

  defp choose_operation do
    operation = 
      "What operation do you want to perform? [Sum, Sub, Mul, Div or Pow] "
      |> IO.gets()
      |> String.trim()
      |> String.capitalize()
    
    unless operation in ["Sum", "Sub", "Mul", "Div", "Pow"] do
        IO.puts("Sorry, invalid operation. Please, choose another operation.")
        choose_operation()
    else
        operation
    end
  end

  defp calculate("Sum", x, y), do: Calculator.Math.sum(x, y) |> elem(1)
  defp calculate("Sub", x, y), do: Calculator.Math.difference(x, y) |> elem(1)
  defp calculate("Mul", x, y), do: Calculator.Math.product(x, y) |> elem(1)
  defp calculate("Pow", x, y), do: Calculator.Math.power(x, y) |> elem(1)
  defp calculate("Div", x, y) do
    case Calculator.Math.quotient(x, y) do
      {:ok, result} -> result
      {:error, message} ->
        IO.puts("#{message}. Please, choose another second number.")
        y = choose_number("What is the second number of your operation? ")
        calculate("Div", x, y)
    end
  end

  defp end_operation() do
    run_again =
      "Do you want to perform another operation? [Y / N] "
      |> IO.gets()
      |> String.trim()
      |> String.capitalize()

    unless run_again == "Y" do
      IO.puts("Thanks for using the Elixir Calculator.")
    else
      begin_operation()
    end
  end

  def begin_operation() do
    number_1 = choose_number("What is the first number of your operation? ")
    operation = choose_operation()
    number_2 = choose_number("What is the second number of your operation? ")

    result = calculate(operation, number_1, number_2)
    IO.puts("Your result is #{result}")
    end_operation()
  end
end
