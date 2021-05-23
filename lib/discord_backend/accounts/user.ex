defmodule DiscordBackend.Accounts.User do
  use DiscordBackend.Schema

  schema "user" do
    field :username, :string
    field :discriminator, :string
    field :avatar, :string
    field :bot, :boolean
    field :system, :boolean
    field :mfa_enabled, :boolean
    field :locale, :string
    field :verified, :string
    field :email, :string
    field :flags, :integer
    field :premium_type, :integer
    field :public_flags, :integer

    timestamps()
  end
end
