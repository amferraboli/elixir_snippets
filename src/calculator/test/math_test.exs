defmodule Calculator.MathTest do
  use ExUnit.Case
  doctest Calculator.Math

  test "should return 4 when sum 2 by 2" do
    assert Calculator.Math.sum(2, 2) == {:ok, 4}
  end

  test "should return 0 when subtract 2 by 2" do
    assert Calculator.Math.difference(2, 2) == {:ok, 0}
  end

  test "should return 4 when multiply 2 by 2" do
    assert Calculator.Math.product(2, 2) == {:ok, 4}
  end

  test "should return 9 when power 3 by 2" do
    assert Calculator.Math.power(3, 2) == {:ok, 9}
  end

  test "should return 2 when divide 4 by 2" do
    assert Calculator.Math.quotient(4, 2) == {:ok, 2}
  end

  test "shouldn't return anything when divide any number by 0" do
    message = "Sorry, can't divide by 0"
    assert Calculator.Math.quotient(10, 0) == {:error, message}
    assert Calculator.Math.quotient(0, 0) == {:error, message}
  end
end
