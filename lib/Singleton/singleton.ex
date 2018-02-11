defmodule Singleton do
  @moduledoc """
    
  Copyright © 2018 Edwin Buehler. All rights reserved.
  """
  use GenServer

  @initial_value "starting value"

  @doc """
  Start the Server
  """
  def start_link(struct_name) do
    GenServer.start_link(__MODULE__, :no_instance, name: struct_name)
  end

#   def init(:ok) do
#     {:ok, []}
#   end

  def value(struct_name),
    do: GenServer.call(struct_name, :read)

  def update(struct_name, value),
    do: GenServer.call(struct_name, {:write, value})

  def handle_call(:read, _from, value),
    do: {:reply, value, value}

  def handle_call({:write, value}, _from, _old_value),
    do: {:reply, :ok, value}
end