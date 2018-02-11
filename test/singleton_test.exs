defmodule SingletonTest do
  @moduledoc """
  
  """
  use ExUnit.Case

  describe "Singleton" do
    test "Singleton with default value" do
      sample = SingletonStructSample.new()
      assert sample.name == "Default Name"
      sample = SingletonStructSample.new()
      assert sample.name == "Default Name"
      sample = SingletonStructSample.new("Try_A_New_Singleton")
      assert sample.name == "Default Name"
    end

    test "Singleton test" do
      sample = SingletonStructSample.new("A_Singleton")
      assert sample.name == "A_Singleton"
      sample = SingletonStructSample.new("Try_A_New_Singleton")
      assert sample.name == "A_Singleton"
    end

    test "Singleton update" do
      singleton = SingletonStructSample.new("A_Singleton")
      assert singleton.name == "A_Singleton"
      singleton = SingletonStructSample.new("Try_A_New_Singleton")
      assert singleton.name == "A_Singleton"
      singleton = SingletonStructSample.new()
      assert singleton.name == "A_Singleton"
      singleton = SingletonStructSample.update("Updated_Singleton")
      assert singleton.name == "Updated_Singleton"
      singleton = SingletonStructSample.new()
      assert singleton.name == "Updated_Singleton"
    end
  end
end
