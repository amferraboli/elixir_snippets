defmodule Calculator do
  alias :math, as: Math

  def sum(x,y) do
    x + y
  end

  def difference(x,y) do
    x-y
  end

  def product(x,y) do
    x*y
  end

  def power(x,y) do
    Math.pow(x,y)
  end

  def quotient(x,y) do
    #to do: div by zero guard
    x/y
  end

  def calculate("Sum", x, y) do
    sum(x,y)
  end

  def calculate("Sub", x, y) do
    difference(x,y)
  end

  def calculate("Mul", x, y) do
    product(x,y)
  end

  def calculate("Div", x, y) do
    quotient(x,y)
  end

  def calculate("Pow", x, y) do
    power(x,y)
  end

  def calculate(_, x, y) do
    {:error, "Invalid operation"}
  end
end

defmodule Timer do
  def sleep do
    :timer.sleep(3_000)
  end
end

defmodule Welcome do
  def initiate_calculator do
    IO.puts("Welcome to Elixir Calculator! It can help you with simple and complex calculations.")
    IO.puts("Available functions: ")
    Timer.sleep()
    IO.puts("Sum returns the sum of two elements")
    Timer.sleep()
    IO.puts("Subtraction returns the difference of two elements")
    Timer.sleep()
    IO.puts("Multiplication returns the product of two elements")
    Timer.sleep()
    IO.puts("Division returns the quotient of two elements")
    Timer.sleep()
    IO.puts("Power returns an element to the power of the other")
    Timer.sleep()
  end
end

defmodule Operation do
  def choose_number_1 do
    "What is the first number of your operation?"
    #to do: type check valid number
    |>IO.gets()
    |>String.trim()
    |>Float.parse()
    |> elem(0)
  end

  def choose_operation do
    "What operation do you want to perform? Choose one of the following Sum, Sub, Mul, Div or Pow."
    |>IO.gets()
    |>String.trim()
    |>String.capitalize()
  end

  def choose_number_2 do
    "What is the second number of your operation?"
    #to do: type check valid number
    |>IO.gets()
    |>String.trim()
    |>Float.parse()
    |> elem(0)
  end

  def result do
    number_1 = choose_number_1()
    operation = choose_operation()
    number_2 = choose_number_2()
    check_zero_div(operation, number_2)
    result = Calculator.calculate(operation, number_1, number_2)
    IO.puts("Your result is #{result}")
  end
end

defmodule NextStep do
  def end_of_operation do
    "Do you want to perform another operation? [Y / N]."
    |>IO.gets()
    |>String.trim()
    |>String.capitalize()
  end

  def next_step_choice(another_operation) when another_operation == "Y" do
    CompleteOperation.complete_operation()
  end

  def next_step_choice(another_operation) when another_operation == "N" do
    IO.puts("Thanks for using the Elixir Calculator")
  end
end

defmodule CompleteOperation do
  def complete_operation do
    Operation.result()
    NextStep.end_of_operation()
    |>NextStep.next_step_choice()
    end
end

Welcome.initiate_calculator()
CompleteOperation.complete_operation()
