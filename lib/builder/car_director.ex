defmodule CarDirector do
    import CarBuilder

    def construct(), do: construct("")
    def construct(name) do
        car = 
        case name do
            "Blues Mobil" ->
                CarBuilder.build()
                    |> name(name)
                    |> color_doors(:black)
            "Bumble Bee" ->
                TransformerCarBuilder.build()
                    |> name(name)
                    |> color(:yellow)
                    |> color_doors(:black)
            _ ->
                CarBuilder.build()
                    |> name("Average Joe")
        end
    end
end
