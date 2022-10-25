defmodule SupSample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  alias SupSample.MyServer

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: SupSample.Worker.start_link(arg)
      {MyServer, []}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SupSample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
