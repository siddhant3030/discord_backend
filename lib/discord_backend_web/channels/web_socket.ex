defmodule DiscordBackend.WebSocket do
  defstruct [:topic, :event, :payload]
end

defimpl DiscordBackend.Notifications, for: DiscordBackend.WebSocket do
  alias DiscordBackendWeb.Endpoint

  def send(n) do
    Endpoint.broadcast(n.topic, n.event, n.payload)
  end
end
