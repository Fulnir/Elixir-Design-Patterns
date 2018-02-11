defmodule CarBuilder do
  @moduledoc """
    
  Copyright © 2018 Edwin Buehler. All rights reserved.
  """
  def build, do: %Car{}

  @doc " Updating the given struct with a new value. "
  def name(car, name), do: %{car | name: name}
  @doc " Updating the given struct with a new value. "
  def color(car, color), do: %{car | color: color}
  @doc " Updating the given struct with a new value. "
  def color_doors(car, color), do: %{car | color_doors: color}
end
