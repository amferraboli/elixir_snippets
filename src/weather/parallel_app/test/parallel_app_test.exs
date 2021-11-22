defmodule ParallelAppTest do
  use ExUnit.Case
  doctest ParallelApp

  test "greets the world" do
    assert ParallelApp.hello() == :world
  end
end
