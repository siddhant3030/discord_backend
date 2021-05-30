defmodule DiscordBackend.Channels.Channel do

  schema "channel" do
    field :type, :integer
    field :position, :integer
    field :name, :string
    field :topic, :string
    field :nsfw?, :boolean
  end
end
