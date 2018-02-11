defmodule SingletonStructSample do
    @moduledoc """
    
    Copyright © 2018 Edwin Buehler. All rights reserved.
    """

    defstruct name: String

    @doc """
    
    """
    def new do
        new("Default Name")
    end

    @doc """
    
    """
    def new(name) do
        struct = %SingletonStructSample{name: name}
        singleton(struct)
    end

    @doc """
    
    """
    def singleton(struct) do
        case Singleton.start_link(SingletonStructSample) do
            {:error, {:already_started, pid}} ->
                old_struct = Singleton.value(SingletonStructSample)
                old_struct
            {:ok, pid} ->
                Singleton.update(SingletonStructSample, struct)
                struct = Singleton.value(SingletonStructSample)
                struct
        end
    end

    @doc """
    
    """
    def update(name) do
        struct = Singleton.value(SingletonStructSample)
        struct = %{struct | name: "Updated_Singleton"}
        Singleton.update(SingletonStructSample, struct)
        Singleton.value(SingletonStructSample)
    end

end
