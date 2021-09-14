defmodule Util do
    def typeof(self) do
        cond do
            is_float(self) -> "float"
            is_integer(self) -> "integer"
            is_boolean(self) -> "boolean"
            is_atom(self) -> "atom"
            is_binary(self) -> "binary / string"
            is_function(self) -> "function"
            is_list(self) -> "list"
            is_tuple(self) -> "tuple"
            true -> "mysterious type"
        end    
    end

    def print_type(self) do
        IO.puts("#{self} is of type: " <> Util.typeof(self))
        :timer.sleep(2000)
    end

    def print_inspect_type(self) do
        IO.puts("#{inspect(self)} is of type: " <> Util.typeof(self))
        :timer.sleep(2000)
    end

end

type_integer = 42
type_float = 42.0
type_boolean = true
type_atom = :atom
type_string = "elixir"
type_list = [42, 1, 2]
type_tuple = {42, "elixir"}
type_function = fn a, b -> a + b end
function_string = "fn a, b -> a + b end"

IO.puts("Types in Elixir\n")
for n <- [type_integer, type_float, type_boolean], do: Util.print_type(n)
for n <- [type_string, type_atom, type_list, type_tuple], do: Util.print_inspect_type(n)

IO.puts("#{inspect(function_string)} é do tipo: " <> Util.typeof(type_function))
