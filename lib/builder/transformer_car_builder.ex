defmodule TransformerCarBuilder do
  @moduledoc """
    
  Copyright © 2018 Edwin Buehler. All rights reserved.
  """
  def build, do: %TransformerCar{}

  def name(car, name), do: %{car | name: name}
  def color(car, color), do: %{car | color: color}
  def color_doors(car, color), do: %{car | color_doors: color}
end
