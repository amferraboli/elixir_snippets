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
   x/y
  end

  def calculate(operation, x, y) when operation == "Sum" do
    sum(x,y)
  end
end

defmodule Timer do

  def sleep do
    :timer.sleep(3_000)
  end
end

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

operation = String.trim(IO.gets("What operation to perform? Sum, Sub, Mul, Div or Pow?"))
cap_operation = String.capitalize(operation)
number_1 = String.to_integer(String.trim(IO.gets("Which is the first number?")))
number_2 = String.to_integer(String.trim(IO.gets("Which is the second number?")))

result = Calculator.calculate(cap_operation, number_1, number_2)
IO.puts("Your result is #{result}")

IO.puts("Thanks for using the Elixir Calculator")
