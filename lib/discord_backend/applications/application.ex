defmodule DiscordBackend.Applications.Application do

  use DiscordBackend.Schema

  schema "application" do
    field :name, :string
    field :icon, :string
    field :description, :string
    field :rpc_origins?, {:array, :string}
    field :bot_public, :boolean
    field :bot_require_code_grant, :boolean
    field :terms_of_service_url?, :string
    field :privacy_policy_url?, :string
    field :owner, AtomType
    field :summary, :string
    field :verify_key, :string
    field :guild_id?
    field :primary_sku_id?
    field :slug?, :string
    field :cover_image?, :string
    field :flags, :integer

    timestamps()
  end
end
