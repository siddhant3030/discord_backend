# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discord_backend,
  ecto_repos: [DiscordBackend.Repo]

# Configures the endpoint
config :discord_backend, DiscordBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZLrdx02VaSNFrCNBCXijUAEgzA3hkjTTz9lHf81kDN4l8rhJwgcYCA85mYoTbnM/",
  render_errors: [view: DiscordBackendWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: DiscordBackend.PubSub,
  live_view: [signing_salt: "8XYTZ1Ov"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :exnowflake,
  worker_id: {:system, 1022}, # Must be an integer between 0-1023
  epoch: 1574787672858

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
