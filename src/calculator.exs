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

  def calculate(operation, x, y) when operation == "Sum" do
    sum(x,y)
  end

  def calculate(operation, x, y) when operation == "Sub" do
    difference(x,y)
  end

  def calculate(operation, x, y) when operation == "Mul" do
    product(x,y)
  end

  def calculate(operation, x, y) when operation == "Div" do
    quotient(x,y)
  end

  def calculate(operation, x, y) when operation == "Pow" do
    power(x,y)
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
  def choose_parameters do
    number_1 = "What is the first number of your operation?"
    #to do: type check valid number
    |>IO.gets()
    |>String.trim()
    |>Float.parse()
    {value_1, _} = number_1

    operation = "What operation do you want to perform? Choose one of the following Sum, Sub, Mul, Div or Pow."
    |>IO.gets()
    |>String.trim()
    |>String.capitalize()

    number_2 = "What is the second number of your operation?"
    #to do: type check valid number
    |>IO.gets()
    |>String.trim()
    |>Float.parse()
    {value_2, _} = number_2

  result = Calculator.calculate(operation, value_1, value_2)
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
    Operation.choose_parameters()
    NextStep.end_of_operation()
    |>NextStep.next_step_choice()
    end
end

Welcome.initiate_calculator()
CompleteOperation.complete_operation()
