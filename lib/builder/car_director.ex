defmodule CarDirector do
    @moduledoc """
    
    Copyright © 2018 Edwin Buehler. All rights reserved.
    """
    import CarBuilder

    def construct, do: construct("")
    def construct(name) do
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
