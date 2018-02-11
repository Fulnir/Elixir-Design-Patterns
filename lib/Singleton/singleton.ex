defmodule Singleton do
  @moduledoc """
    
  
  """
  use GenServer
  require Logger
  @doc """
  Start the Server
  """
  def start_link(struct_name) do
    case GenServer.start_link(__MODULE__, :no_instance, name: struct_name) do
      {:ok, pid} ->
        Logger.info "---- #{__MODULE__} worker started for #{struct_name}"
        {:ok, pid}
      {:error, {:already_started, pid}} ->
        Logger.info "---- #{__MODULE__} worker already running for #{struct_name}"
        {:error, {:already_started, pid}}
    end
  end

  def value(struct_name),
    do: GenServer.call(struct_name, :read)

  def update(struct_name, value),
    do: GenServer.call(struct_name, {:write, value})

  def handle_call(:read, _from, value),
    do: {:reply, value, value}

  def handle_call({:write, value}, _from, _old_value),
    do: {:reply, :ok, value}
end
