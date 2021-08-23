words_per_letter = [
    a: %{words: ["Atenciosa", "Agradável", "Amável", "Animada", "Amigável", "Alegre", "Admirável"]},
    b: %{words: ["Brilhante", "Boa", "Bonita", "Bondosa", "Bela", "Bacana"]},
    c: %{words: ["Calorosa", "Camarada", "Capaz", "Carinhosa", "Carismática", "Charmosa", "Companheira", "Competente", "Criativa", "Cuidadosa"]},
    d: %{words: ["Divertida", "Dedicada", "Destemida", "Doce", "Deslumbrante"]},

  ]

defmodule Name_acrostic do
    def get_name() do
        String.trim(IO.gets("Qual é o seu nome?"))
    end

    def transform_name(name) do
        String.capitalize(name)
    end

    def print_hello_name(name) do
        IO.puts("Olá #{name}! Vamos gerar um acróstico do seu nome?")
    end

    def split_characters(name) do
        String.codepoints(name)
    end
end

input_name = Name_acrostic.get_name()
capital_name = Name_acrostic.transform_name(input_name)
Name_acrostic.print_hello_name(capital_name)
