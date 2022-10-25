defmodule SupSample.MyServer do
  use GenServer

  def init(_) do
    {:ok, []}
  end

  def start_link([]) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def ping do
    GenServer.call(__MODULE__, :ping)
  end

  def crash do
    GenServer.cast(__MODULE__, :crash)
  end

  def handle_call(:ping, _from, state) do
    {:reply, :pong, state}
  end

  def handle_call(:crash, _from, state) do
    throw("Bang!")
    {:reply, :error, state}
  end

  def terminate(reason, state) do
    # dump the state
  end
end
