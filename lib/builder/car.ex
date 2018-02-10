defmodule Car do
    @moduledoc """
    
    Copyright © 2018 Edwin Buehler. All rights reserved.
    """
    require Logger

    
    @doc """
    Die Variablen
    """
    defstruct name: String,
        color: :white,
        color_doors: :white

    @doc """
    Creates a new car
    """
    def new(name) do
        %Car{name: name}
    end

    def is_transformer?(%{__struct__: struct_name} = car)  do
        IO.puts inspect(struct_name)
        case struct_name do
            TransformerCar ->
                true
            _ ->
                false
            end
    end

   
end
