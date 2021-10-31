defmodule Calculator.Math do
  @moduledoc """
  Define core math module.
  """

  @doc """
  Sum two numbers.

  ## Parameters
  - `x` - First number.
  - `y` - Second number.

  ## Examples
  * Math.sum(3, 2)
  * {:ok, 5}
  """
  def sum(x, y), do: {:ok, x + y}

  @doc """
  Subtract two numbers.

  ## Parameters
  - `x` - First number.
  - `y` - Second number.

  ## Examples
  * Math.difference(3, 2)
  * {:ok, 1}
  """
  def difference(x, y), do: {:ok, x - y}

  @doc """
  Multiply two numbers.

  ## Parameters
  - `x` - First number.
  - `y` - Second number.

  ## Examples
  * Math.product(3, 2)
  * {:ok, 6}
  """
  def product(x, y), do: {:ok, x * y}

  @doc """
  First number powered to the second.

  ## Parameters
  - `x` - First number.
  - `y` - Second number.

  ## Examples
  * Math.power(3, 2)
  * {:ok, 9}
  """
  def power(x, y), do: {:ok, :math.pow(x, y)}

  @doc """
  Ratio between two numbers.
  Return a error if the denominator is 0.

  ## Parameters
  - `x` - First number.
  - `y` - Second number.

  ## Examples
  * Math.quotient(3, 2)
  * {:ok, 1.5}

  * Math.quotient(3, 0)
  * {:error, "Sorry can't divide by 0"}
  """
  def quotient(x, y) when y != 0 do
    {:ok, Float.ceil(x / y, 2)}
  end
  def quotient(_, _), do: {:error, "Sorry, can't divide by 0"}
end
