defmodule DiscordBackend.Repo do
  use Ecto.Repo,
    otp_app: :discord_backend,
    adapter: Ecto.Adapters.Postgres
end
