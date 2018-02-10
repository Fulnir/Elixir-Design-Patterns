defmodule BuilderTest do
  use ExUnit.Case
  import Car
  import CarBuilder
  

  # doctest ElixirDesignPatterns
  describe "Builder" do
    test "Direct creating a car" do
      car = Car.new("Blues Mobil")
      assert "Blues Mobil" == car.name
    end

    test "A concrete builder" do
      car =
        CarBuilder.build()
        |> name("Blues Mobil")

      assert "Blues Mobil" == car.name
    end

    test "Director" do
      car = CarDirector.construct("Blues Mobil")
      assert "Blues Mobil" == car.name
      assert :white == car.color
      assert :black == car.color_doors
      assert false == is_transformer?(car)
      car = CarDirector.construct("Bumble Bee")
      assert "Bumble Bee" == car.name
      assert :yellow == car.color
      assert :black == car.color_doors
      assert true == is_transformer?(car)
      car = CarDirector.construct("Brumm Brumm")
      assert "Average Joe" == car.name
      assert :white == car.color
      assert :white == car.color_doors
      car = CarDirector.construct()
      assert "Average Joe" == car.name
      assert :white == car.color
      assert :white == car.color_doors
    end
  end
end
