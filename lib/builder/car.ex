defmodule Car do
    @moduledoc """
    
    Copyright © 2018 Edwin Buehler. All rights reserved.
    """
    @doc """
    A simple struct.

        iex> %Car{name: "Blue Ocean", color: :blue, color_doors: :cyan}
        %Car{name: "Blue Ocean", color: :blue, color_doors: :cyan}

    """
    defstruct name: String,
        color: :white,
        color_doors: :white

    @doc """
    Creates a new car without the builder.
    """
    def new(name) do
        %Car{name: name}
    end

    @doc """
    A car or a transformer? Not builder related.
    """
    def is_transformer?(%{__struct__: struct_name})  do
        case struct_name do
            TransformerCar ->
                true
            _ ->
                false
            end
    end

end
