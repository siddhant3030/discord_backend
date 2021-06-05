defprotocol DiscordBackend.Notifications do
   @moduledoc """
  A protocol for dealing with the
  various forms of notifications.
  """
  @doc "Sends a notification."
  def send(notification)
end
