defmodule SingletonStructSample do
    @moduledoc """
    
    SingletonStructSample with default value.
    ```
    singleton = SingletonStructSample.new()
    ```

    SingletonStructSample with geven value.
    ```
    singleton = SingletonStructSample.new("A_Singleton")
    ```

    Available SingletonStructSample instance update.
    ```
    singleton = SingletonStructSample.update("Updated_Singleton")
    ```

    """

    defstruct name: String

    @doc """
    Creating a default instance  of the struct.
    """
    def new do
        new("Default Name")
    end

    @doc """
    Creating a instance  of the struct with given values.
    """
    def new(name) do
        struct = %SingletonStructSample{name: name}
        singleton(struct)
    end

    @doc """
    Creating an instance of the given struct but only if there no other.
    In that case, the available struct will be returned.
    """
    def singleton(struct) do
        case Singleton.start_link(SingletonStructSample) do
            {:error, {:already_started, pid}} ->
                old_struct = Singleton.value(SingletonStructSample)
                old_struct
            {:ok, pid} ->
                # We update the GenServer start value :no_instance
                Singleton.update(SingletonStructSample, struct)
                struct = Singleton.value(SingletonStructSample)
                struct
        end
    end

    @doc """
    Reading the GenServer value, update the struct and than updating the GenServer value.
    """
    def update(name) do
        struct = Singleton.value(SingletonStructSample)
        struct = %{struct | name: "Updated_Singleton"}
        Singleton.update(SingletonStructSample, struct)
        Singleton.value(SingletonStructSample)
    end

end
