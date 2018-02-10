defmodule TransformerCar do
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
        %TransformerCar{name: name}
    end

    
end
